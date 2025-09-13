package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.Difficulty;
import com.vn.cookinote.models.Recipe;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Builder
public record RecipeDto(Long id, String title, String description, Integer cookTimeMinutes, Integer servings,
                        Difficulty difficulty, Long viewsCount, LocalDateTime createdAt,
                        LocalDateTime updatedAt, CategoryDto category, UserDto1 user, List<RecipeMediaDto> medias,
                        List<RecipeIngredientDto> ingredients, List<StepDto> steps) implements Serializable {

    public static RecipeDto fromEntity(Recipe recipe) {
        if (recipe == null) return null;
        return RecipeDto.builder()
                .id(recipe.getId())
                .title(recipe.getTitle())
                .description(recipe.getDescription())
                .cookTimeMinutes(recipe.getCookTimeMinutes())
                .servings(recipe.getServings())
                .difficulty(recipe.getDifficulty())
                .viewsCount(recipe.getViewsCount())
                .createdAt(recipe.getCreatedAt())
                .updatedAt(recipe.getUpdatedAt())
                .category(CategoryDto.fromEntity(recipe.getCategory()))
                .steps(StepDto.fromEntities(recipe.getSteps()))
                .ingredients(RecipeIngredientDto.fromEntities(recipe.getIngredients()))
                .medias(RecipeMediaDto.fromEntities(recipe.getMedias()))
                .user(UserDto1.fromEntity(recipe.getUser()))
                .build();
    }
}