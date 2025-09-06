package com.vn.cookinote.dtos.requests;

import java.math.BigDecimal;

public record RecipeIngredientRequest(
        String ingredientName,
        BigDecimal quantity,
        String unit
) {
}
