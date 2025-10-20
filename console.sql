CREATE EXTENSION IF NOT EXISTS unaccent;

CREATE OR REPLACE FUNCTION vn_unaccent(text)
    RETURNS text AS
$func$
SELECT lower(translate($1,
                       '¹²³ÀÁẢẠÂẤẦẨẬẪÃÄÅÆàáảạâấầẩẫậãäåæĀāĂẮẰẲẴẶăắằẳẵặĄąÇçĆćĈĉĊċČčĎďĐđÈÉẸÊẾỀỄỆËèéẹêềếễệëĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħĨÌÍỈỊÎÏìíỉịîïĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŁłÑñŃńŅņŇňŉŊŋÒÓỎỌÔỐỒỔỖỘỐỒỔỖỘƠỚỜỞỠỢÕÖòóỏọôốồổỗộơớờỡợởõöŌōŎŏŐőŒœØøŔŕŖŗŘřßŚśŜŝŞşŠšŢţŤťŦŧÙÚỦỤƯỪỨỬỮỰÛÜùúủụûưứừửữựüŨũŪūŬŭŮůŰűŲųŴŵÝýÿŶŷŸŹźŻżŽžёЁ',
                       '123AAAAAAAAAAAAAAaaaaaaaaaaaaaaAaAAAAAAaaaaaaAaCcCcCcCcCcDdDdEEEEEEEEEeeeeeeeeeEeEeEeEeEeGgGgGgGgHhHhIIIIIIIiiiiiiiIiIiIiIiIiJjKkkLlLlLlLlLlNnNnNnNnnNnOOOOOOOOOOOOOOOOOOOOOOOooooooooooooooooooOoOoOoEeOoOoRrRrRrSSsSsSsSsTtTtTtUUUUUUUUUUUUuuuuuuuuuuuuUuUuUuUuUuUuWwYyyYyYZzZzZzеЕ'));
$func$ LANGUAGE sql IMMUTABLE;

-- Create a full-text search vector for the recipe table
ALTER TABLE recipes ADD COLUMN search_vector tsvector;
CREATE INDEX idx_recipes_search_vector ON recipes USING GIN(search_vector);

CREATE OR REPLACE FUNCTION recipe_tsv_trigger_func()
    RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    NEW.search_vector :=
            setweight(to_tsvector('simple', coalesce(vn_unaccent(NEW.title), '')), 'A') ||
            setweight(to_tsvector('simple', coalesce(vn_unaccent(NEW.description), '')), 'B');
RETURN NEW;
END
$$;

CREATE TRIGGER recipe_tsv_trigger
    BEFORE INSERT OR UPDATE
                         OF title, description ON recipes
                         FOR EACH ROW
                         EXECUTE PROCEDURE recipe_tsv_trigger_func();

-- Create a full-text search vector for the ingredient table
ALTER TABLE ingredients ADD COLUMN search_vector tsvector;
CREATE INDEX idx_ingredients_search_vector ON ingredients USING GIN(search_vector);

CREATE OR REPLACE FUNCTION ingredient_tsv_trigger_func()
    RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
    NEW.search_vector :=
            setweight(to_tsvector('simple', coalesce(vn_unaccent(NEW.name), '')), 'A');
RETURN NEW;
END
$$;

CREATE TRIGGER ingredient_tsv_trigger
    BEFORE INSERT OR UPDATE OF name
                     ON ingredients
                         FOR EACH ROW
                         EXECUTE PROCEDURE ingredient_tsv_trigger_func();


/** genereate random data **/
INSERT INTO users (biography, created_at, date_of_birth, email, first_name, gender, last_name, password, provider, provider_id, role, status, updated_at, username)
VALUES ('Sở thích nấu ăn', now(), '1999-01-01', 'nguyenthanh@email.com', 'Thanh', 'MALE', 'Nguyễn', '$2a$10$uOSBG49.BY9DYxj9CVe9.eR/ANAojTvKNSMuy4ELCl51Mg7SI.3WO', 'LOCAL', '', 'USER', 'ACTIVE', now(), 'NguyenThanh65'),
       ('Đầu bếp chuyên nghiệp', now(), '1995-05-15', 'hoangan@hotmail.com', 'An', 'FEMALE', 'Hoàng', '$2a$10$uOSBG49.BY9DYxj9CVe9.eR/ANAojTvKNSMuy4ELCl51Mg7SI.3WO', 'LOCAL', '', 'USER', 'ACTIVE', now(), 'HoangAnCute'),
       ('Yêu thích du lịch và ẩm thực', now(), '1990-10-20', 'lethanh@gmail', 'Lễ', 'MALE', 'Thành', '$2a$10$uOSBG49.BY9DYxj9CVe9.eR/ANAojTvKNSMuy4ELCl51Mg7SI.3WO', 'LOCAL', '', 'USER', 'ACTIVE', now(), 'LeThanh'),
       ('Chuyên gia ẩm thực', now(), '1988-03-30', 'tranhoa@yahoo.con', 'Hòa', 'MALE', 'Trần', '$2a$10$uOSBG49.BY9DYxj9CVe9.eR/ANAojTvKNSMuy4ELCl51Mg7SI.3WO', 'LOCAL', '', 'USER', 'ACTIVE', now(), 'TranHoa');

INSERT INTO user_media (created_at, type, updated_at, media_id, user_id)
VALUES (now(), 'AVATAR', now(), 1, 2),
       (now(), 'AVATAR', now(), 1, 3),
       (now(), 'AVATAR', now(), 1, 4),
       (now(), 'AVATAR', now(), 1, 5);

INSERT INTO categories (created_at, description, is_active, is_deleted, name, updated_at)
VALUES (now(), 'Món ăn truyền thống Việt Nam', true, false, 'Món Việt', now()),
       (now(), 'Ẩm thực quốc tế', true, false, 'Món Quốc Tế', now()),
       (now(), 'Món ăn nhanh và tiện lợi', true, false, 'Fast Food', now()),
       (now(), 'Món chay và thuần chay', true, false, 'Chay & Thuần Chay', now());

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'cooki-note/recipes/nxlci0r7glmpn1dv7r0a', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1757519691/cooki-note/recipes/nxlci0r7glmpn1dv7r0a.jpg');

INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (30, now(), 'Món phở bò truyền thống với nước dùng thơm ngon, bánh phở mềm mịn và thịt bò tươi ngon.', 'EASY', false, true, 2, 'Phở Bò', now(), 0, 1, 2),
       (20, now(), 'Bánh mì kẹp thịt với pate, chả lụa, rau sống và nước sốt đặc trưng.', 'EASY', false, true, 1, 'Bánh Mì Thịt', now(), 0, 1, 2),
       (15, now(), 'Món sushi Nhật Bản với cơm dẻo và hải sản tươi ngon.', 'MEDIUM', false, true, 2, 'Sushi', now(), 0, 2, 3),
       (10, now(), 'Hamburger với thịt bò nướng, phô mai và rau củ tươi.', 'EASY', false, true, 1, 'Hamburger', now(), 0, 3, 4),
       (25, now(), 'Món salad chay với rau xanh tươi ngon và nước sốt đặc biệt.', 'EASY', false, true, 2, 'Salad Chay', now(), 0, 4, 5);

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id)
VALUES (now(), 'AVATAR', now(), 2, 1),
       (now(), 'AVATAR', now(), 2, 2),
       (now(), 'AVATAR', now(), 2, 3),
       (now(), 'AVATAR', now(), 2, 4),
       (now(), 'AVATAR', now(), 2, 5);

INSERT INTO ingredients (created_at, name, updated_at)
VALUES (now(), 'Bánh phở', now()),
       (now(), 'Thịt bò', now()),
       (now(), 'Hành lá', now()),
       (now(), 'Giấm', now()),
       (now(), 'Đường', now()),
       (now(), 'Nước mắm', now()),
       (now(), 'Pate', now()),
       (now(), 'Chả lụa', now()),
       (now(), 'Rau sống', now()),
       (now(), 'Bánh mì', now()),
       (now(), 'Cơm sushi', now()),
       (now(), 'Hải sản', now()),
       (now(), 'Thịt bò băm', now()),
       (now(), 'Phô mai', now()),
       (now(), 'Rau xanh', now());

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh phở trắng, sợi to', '200.00', true, 'grams', now(), 1, 1),
       (now(), 'Thịt bò tái hoặc chín', '150.00', true, 'grams', now(), 2, 1),
       (now(), 'Hành lá thái nhỏ', '10.00', false, 'grams', now(), 3, 1),
       (now(), 'Giấm gạo', '15.00', false, 'ml', now(), 4, 1),
       (now(), 'Đường trắng', '10.00', false, 'grams', now(), 5, 1),
       (now(), 'Nước mắm ngon', '20.00', false, 'ml', now(), 6, 1),
       (now(), 'Pate gan heo', '50.00', true, 'grams', now(), 7, 2),
       (now(), 'Chả lụa thái lát mỏng', '50.00', true, 'grams', now(), 8, 2),
       (now(), 'Rau sống (xà lách, dưa leo, ngò)', '30.00', true, 'grams', now(), 9, 2),
       (now(), 'Bánh mì giòn', '1.00', true, 'unit', now(), 10, 2),
       (now(), 'Cơm sushi dẻo', '200.00', true, 'grams', now(), 11, 3),
       (now(), 'Hải sản tươi (cá hồi, tôm)', '150.00', true, 'grams', now(), 12, 3),
       (now(), 'Thịt bò băm nhỏ', '100.00', true, 'grams', now(), 13, 4),
       (now(), 'Phô mai lát hoặc bào sợi', '30.00', true, 'grams', now(), 14, 4),
       (now(), 'Rau xanh tươi (xà lách, cà chua)', '50.00', true, 'grams', now(), 15, 5);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (now(), 'Chuẩn bị nguyên liệu: Rửa sạch và cắt nhỏ hành lá. Chuẩn bị bánh phở, thịt bò và các gia vị cần thiết.', false, 1, now(), 1),
       (now(), 'Nấu nước dùng: Đun sôi nước dùng với các gia vị như gừng, hành tím, quế, hồi để tạo hương vị đặc trưng cho phở.', false, 2, now(), 1),
       (now(), 'Chế biến bánh mì: Cắt bánh mì thành hai phần, phết pate lên một mặt và xếp chả lụa cùng rau sống vào giữa.', false, 1, now(), 2),
       (now(), 'Chuẩn bị sushi: Trải cơm sushi lên lá rong biển, thêm hải sản và cuộn chặt lại. Cắt thành từng miếng vừa ăn.', false, 1, now(), 3),
       (now(), 'Nướng hamburger: Nặn thịt bò băm thành miếng dày và nướng trên bếp hoặc lò nướng cho đến khi chín.', false, 1, now(), 4),
       (now(), 'Thêm phô mai lên trên miếng thịt bò vừa nướng, đợi phô mai tan chảy.', false, 2, now(), 4),
       (now(), 'Kẹp thịt bò và phô mai vào bánh hamburger cùng rau củ tươi.', false, 3, now(), 4),
       (now(), 'Trộn salad: Rửa sạch rau xanh và cắt nhỏ. Trộn với nước sốt yêu thích và trang trí với các loại hạt nếu muốn.', false, 1, now(), 5);

INSERT INTO step_media (created_at, updated_at, media_id, step_id)
VALUES (now(), now(), 2, 1),
       (now(), now(), 2, 2),
       (now(), now(), 2, 3),
       (now(), now(), 2, 4),
       (now(), now(), 2, 5),
       (now(), now(), 2, 6),
       (now(), now(), 2, 7),
       (now(), now(), 2, 8);


INSERT INTO recipe_likes (created_at, updated_at, recipe_id, user_id)
VALUES (now(), now(), 1, 2),
       (now(), now(), 1, 3),
       (now(), now(), 2, 1),
       (now(), now(), 2, 3),
       (now(), now(), 3, 1),
       (now(), now(), 3, 2),
       (now(), now(), 4, 1),
       (now(), now(), 4, 2),
       (now(), now(), 5, 1),
       (now(), now(), 5, 4);

INSERT INTO comments (content, created_at, depth, is_deleted, updated_at, parent_id, recipe_id, user_id)
VALUES ('Món phở bò này thật tuyệt vời! Nước dùng thơm ngon và thịt bò mềm mịn.', now(), 0, false, now(), null, 1, 2),
       ('Tôi rất thích bánh mì thịt này. Pate và chả lụa tạo nên hương vị đặc trưng.', now(), 0, false, now(), null, 2, 3),
       ('Sushi ở đây rất tươi ngon. Cơm dẻo và hải sản tươi làm tôi nhớ đến Nhật Bản.', now(), 0, false, now(), null, 3, 1),
       ('Hamburger này thật ngon! Thịt bò nướng và phô mai tan chảy tạo nên sự kết hợp hoàn hảo.', now(), 0, false, now(), null, 4, 4),
       ('Salad chay này rất tươi ngon và dễ làm. Nước sốt đặc biệt làm tăng hương vị.', now(), 0, false, now(), null, 5, 2),
       ('Tôi đồng ý với bạn về món phở bò. Đây là món ăn yêu thích của tôi.', now(), 1, false, now(), 1, 1, 3),
       ('Bánh mì thịt này thực sự làm tôi nhớ về quê nhà. Cảm ơn bạn đã chia sẻ công thức!', now(), 1, false, now(), 2, 2, 4),
       ('Sushi ở đây đúng là đỉnh cao của nghệ thuật ẩm thực Nhật Bản. Tôi sẽ thử làm tại nhà.', now(), 1, false, now(), 3, 3, 2),
       ('Hamburger này làm tôi nhớ đến những bữa tiệc nướng cuối tuần với bạn bè. Rất ngon!', now(), 1, false, now(), 4, 4, 1),
       ('Salad chay này là lựa chọn hoàn hảo cho những ngày hè nóng bức. Rất tươi mát!', now(), 1, false, now(), 5, 5, 3);
