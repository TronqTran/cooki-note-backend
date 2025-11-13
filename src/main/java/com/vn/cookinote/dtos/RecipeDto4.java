package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Recipe;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;
import java.util.stream.StreamSupport;

@Builder
public record RecipeDto4(Long id, String title, String description) implements Serializable {
    public static RecipeDto4 fromEntity(Recipe recipe) {
        if (recipe == null) return null;
        return RecipeDto4.builder()
                .id(recipe.getId())
                .title(recipe.getTitle())
                .description(recipe.getDescription())
                .build();
    }

    public static List<RecipeDto4> fromEntities(Iterable<Recipe> recipes) {
        if (recipes == null) return null;
        return StreamSupport.stream(recipes.spliterator(), false)
                .map(RecipeDto4::fromEntity)
                .toList();
    }

}