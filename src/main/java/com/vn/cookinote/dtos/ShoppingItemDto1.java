package com.vn.cookinote.dtos;

import java.io.Serializable;
import java.math.BigDecimal;

public record ShoppingItemDto1(ShoppingListDto1 shoppingList, IngredientDto ingredient, BigDecimal quantity,
                               String unit, Boolean purchased) implements Serializable {
}