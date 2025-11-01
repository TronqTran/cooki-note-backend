package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.Difficulty;
import com.vn.cookinote.models.Recipe;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Builder
public record RecipeDto2(Long id, String title, String description, Integer cookTimeMinutes, Integer servings,
                         Difficulty difficulty, Long viewsCount, LocalDateTime createdAt, LocalDateTime updatedAt,
                         UserDto1 user, CategoryDto category, List<StepDto> steps,
                         List<RecipeIngredientDto> ingredients, List<CommentDto> comments, List<RecipeLikeDto> likes,
                         List<RecipeMediaDto> medias, Boolean isPublic) implements Serializable {
    public static RecipeDto2 fromEntity(Recipe recipe) {
        if (recipe == null) return null;
        return RecipeDto2.builder()
                .id(recipe.getId())
                .title(recipe.getTitle())
                .description(recipe.getDescription())
                .cookTimeMinutes(recipe.getCookTimeMinutes())
                .servings(recipe.getServings())
                .difficulty(recipe.getDifficulty())
                .viewsCount(recipe.getViewsCount())
                .createdAt(recipe.getCreatedAt())
                .updatedAt(recipe.getUpdatedAt())
                .user(UserDto1.fromEntity(recipe.getUser()))
                .category(CategoryDto.fromEntity(recipe.getCategory()))
                .steps(StepDto.fromEntities(recipe.getSteps()))
                .ingredients(RecipeIngredientDto.fromEntities(recipe.getIngredients()))
                .comments(CommentDto.fromEntities(recipe.getComments()))
                .likes(RecipeLikeDto.fromEntities(recipe.getLikes()))
                .medias(RecipeMediaDto.fromEntities(recipe.getMedias()))
                .isPublic(recipe.getIsPublic())
                .build(
        );
    }

    public static List<RecipeDto2> fromEntities(List<Recipe> recipes) {
        if (recipes == null) return null;
        return recipes.stream().map(RecipeDto2::fromEntity).toList();
    }
}