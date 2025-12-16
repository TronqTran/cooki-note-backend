package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.Difficulty;
import com.vn.cookinote.models.Recipe;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;

@Builder
public record RecipeDto5(String title, String description, Integer cookTimeMinutes, Integer servings,
                         Difficulty difficulty, List<StepDto1> steps,
                         List<RecipeIngredientDto> ingredients) implements Serializable {

    public static RecipeDto5 fromEntity(Recipe recipe) {
        if (recipe == null) return null;
        return RecipeDto5.builder()
                .title(recipe.getTitle())
                .description(recipe.getDescription())
                .cookTimeMinutes(recipe.getCookTimeMinutes())
                .servings(recipe.getServings())
                .difficulty(recipe.getDifficulty())
                .steps(StepDto1.fromEntities(recipe.getSteps()))
                .ingredients(RecipeIngredientDto.fromEntities(recipe.getIngredients()))
                .build();
    }

    public static List<RecipeDto5> fromEntities(List<Recipe> recipes) {
        if (recipes == null) return null;
        return recipes.stream().map(RecipeDto5::fromEntity).toList();
    }
}