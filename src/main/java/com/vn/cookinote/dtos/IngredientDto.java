package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Ingredient;
import lombok.Builder;

import java.io.Serializable;

@Builder
public record IngredientDto(Long id, String name, String description) implements Serializable {

    public static IngredientDto fromEntity(Ingredient ingredient) {
        return IngredientDto.builder()
                .id(ingredient.getId())
                .name(ingredient.getName())
                .description(ingredient.getDescription())
                .build();
    }
}