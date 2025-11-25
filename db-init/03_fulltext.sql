-- recipe table full-text search setup
ALTER TABLE recipes ADD COLUMN IF NOT EXISTS search_vector tsvector;

CREATE INDEX IF NOT EXISTS idx_recipes_search_vector
    ON recipes USING GIN(search_vector);

CREATE OR REPLACE FUNCTION recipe_tsv_trigger_func()
    RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    NEW.search_vector :=
            setweight(to_tsvector('simple', coalesce(unaccent(NEW.title), '')), 'A') ||
            setweight(to_tsvector('simple', coalesce(unaccent(NEW.description), '')), 'B');
    RETURN NEW;
END
$$;

DROP TRIGGER IF EXISTS recipe_tsv_trigger ON recipes;

CREATE TRIGGER recipe_tsv_trigger
    BEFORE INSERT OR UPDATE OF title, description
    ON recipes
    FOR EACH ROW
EXECUTE PROCEDURE recipe_tsv_trigger_func();

-- ingredient table full-text search setup
ALTER TABLE ingredients ADD COLUMN IF NOT EXISTS search_vector tsvector;

CREATE INDEX IF NOT EXISTS idx_ingredients_search_vector
    ON ingredients USING GIN(search_vector);

CREATE OR REPLACE FUNCTION ingredient_tsv_trigger_func()
    RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    NEW.search_vector :=
            setweight(to_tsvector('simple', coalesce(unaccent(NEW.name), '')), 'A');
    RETURN NEW;
END
$$;

DROP TRIGGER IF EXISTS ingredient_tsv_trigger ON ingredients;
CREATE TRIGGER ingredient_tsv_trigger
    BEFORE INSERT OR UPDATE OF name
    ON ingredients
    FOR EACH ROW
EXECUTE PROCEDURE ingredient_tsv_trigger_func();
