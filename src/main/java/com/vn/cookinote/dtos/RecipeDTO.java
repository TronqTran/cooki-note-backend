package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.Difficulty;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Builder
public record RecipeDto(Long id, String title, String description, Integer cookTimeMinutes, Integer servings,
                        Difficulty difficulty, Long likesCount, Long viewsCount, LocalDateTime createdAt,
                        LocalDateTime updatedAt, CategoryDto category, List<StepDto> steps,
                        List<RecipeIngredientDto> ingredients, List<RecipeMediaDto> medias) implements Serializable {

    public static RecipeDto fromEntity(com.vn.cookinote.models.Recipe recipe) {
        return RecipeDto.builder()
                .id(recipe.getId())
                .title(recipe.getTitle())
                .description(recipe.getDescription())
                .cookTimeMinutes(recipe.getCookTimeMinutes())
                .servings(recipe.getServings())
                .difficulty(recipe.getDifficulty())
                .likesCount(recipe.getLikesCount())
                .viewsCount(recipe.getViewsCount())
                .createdAt(recipe.getCreatedAt())
                .updatedAt(recipe.getUpdatedAt())
                .category(CategoryDto.fromEntity(recipe.getCategory()))
                .steps(StepDto.fromEntities(recipe.getSteps()))
                .ingredients(RecipeIngredientDto.fromEntities(recipe.getIngredients()))
                .medias(RecipeMediaDto.fromEntities(recipe.getMedias()))
                .build();
    }
}