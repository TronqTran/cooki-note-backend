package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Ingredient;
import lombok.Builder;

import java.io.Serializable;

@Builder
public record IngredientDto(String name) implements Serializable {

    public static IngredientDto fromEntity(Ingredient ingredient) {
        if (ingredient == null) return null;
        return IngredientDto.builder()
                .name(ingredient.getName())
                .build();
    }
}