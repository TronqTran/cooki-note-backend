package com.vn.cookinote.dtos;

import com.vn.cookinote.models.RecipeIngredient;
import lombok.Builder;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Builder
public record RecipeIngredientDto(IngredientDto ingredient, BigDecimal quantity, String unit, Boolean required,
                                  String note) implements Serializable {

    public static RecipeIngredientDto fromEntity(RecipeIngredient recipeIngredient) {
        if (recipeIngredient == null) return null;
        return RecipeIngredientDto.builder()
                .ingredient(IngredientDto.fromEntity(recipeIngredient.getIngredient()))
                .quantity(recipeIngredient.getQuantity())
                .unit(recipeIngredient.getUnit())
                .required(recipeIngredient.getRequired())
                .note(recipeIngredient.getNote())
                .build();
    }

    public static List<RecipeIngredientDto> fromEntities(List<RecipeIngredient> ingredients) {
        if (ingredients == null) return null;
        return ingredients.stream()
                .map(RecipeIngredientDto::fromEntity)
                .toList();
    }
}