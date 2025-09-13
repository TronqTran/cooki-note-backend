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
                         List<RecipeMediaDto> medias) implements Serializable {
    public static RecipeDto2 fromEntity(Recipe entity) {
        if (entity == null) return null;
        return RecipeDto2.builder()
                .id(entity.getId())
                .title(entity.getTitle())
                .description(entity.getDescription())
                .cookTimeMinutes(entity.getCookTimeMinutes())
                .servings(entity.getServings())
                .difficulty(entity.getDifficulty())
                .viewsCount(entity.getViewsCount())
                .createdAt(entity.getCreatedAt())
                .updatedAt(entity.getUpdatedAt())
                .user(UserDto1.fromEntity(entity.getUser()))
                .category(CategoryDto.fromEntity(entity.getCategory()))
                .steps(StepDto.fromEntities(entity.getSteps()))
                .ingredients(RecipeIngredientDto.fromEntities(entity.getIngredients()))
                .comments(CommentDto.fromEntities(entity.getComments()))
                .likes(RecipeLikeDto.fromEntities(entity.getLikes()).stream().limit(5L).toList())
                .medias(RecipeMediaDto.fromEntities(entity.getMedias()))
                .build(
        );
    }

    public static List<RecipeDto2> fromEntities(List<Recipe> entities) {
        if (entities == null) return null;
        return entities.stream().map(RecipeDto2::fromEntity).toList();
    }
}