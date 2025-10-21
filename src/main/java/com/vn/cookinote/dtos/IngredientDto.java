package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Ingredient;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;
import java.util.stream.StreamSupport;

@Builder
public record IngredientDto(Long id, String name) implements Serializable {

    public static IngredientDto fromEntity(Ingredient ingredient) {
        if (ingredient == null) return null;
        return IngredientDto.builder()
                .id(ingredient.getId())
                .name(ingredient.getName())
                .build();
    }

    public static List<IngredientDto> fromEntities(Iterable<Ingredient> ingredients) {
        if (ingredients == null) return null;
        return StreamSupport.stream(ingredients.spliterator(), false)
                .map(IngredientDto::fromEntity)
                .toList();
    }
}