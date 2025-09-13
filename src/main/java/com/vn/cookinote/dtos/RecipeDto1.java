package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.Difficulty;
import com.vn.cookinote.models.Recipe;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;

@Builder
public record RecipeDto1(Long id, String title, String description, Integer cookTimeMinutes, Integer servings,
                         Difficulty difficulty, UserDto1 user, List<RecipeMediaDto> medias) implements Serializable {

    public static RecipeDto1 fromEntity(Recipe recipe) {
        if (recipe == null) return null;
        return RecipeDto1.builder()
                .id(recipe.getId())
                .title(recipe.getTitle())
                .description(recipe.getDescription())
                .cookTimeMinutes(recipe.getCookTimeMinutes())
                .servings(recipe.getServings())
                .difficulty(recipe.getDifficulty())
                .user(UserDto1.fromEntity(recipe.getUser()))
                .medias(RecipeMediaDto.fromEntities(recipe.getMedias()))
                .build();
    }

    public static List<RecipeDto1> fromEntities(List<Recipe> recipes) {
        if (recipes == null) return null;
        return recipes.stream()
                .map(RecipeDto1::fromEntity)
                .toList();
    }
}