package com.vn.cookinote.dtos;

import com.vn.cookinote.models.ShoppingItem;
import lombok.Builder;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Builder
public record ShoppingItemDto(IngredientDto ingredient, BigDecimal quantity, String unit,
                              Boolean purchased) implements Serializable {
    public static ShoppingItemDto fromEntity(ShoppingItem shoppingItem) {
        if (shoppingItem == null) return null;
        return ShoppingItemDto.builder()
                .ingredient(IngredientDto.fromEntity(shoppingItem.getIngredient()))
                .quantity(shoppingItem.getQuantity())
                .unit(shoppingItem.getUnit())
                .purchased(shoppingItem.getPurchased())
                .build();
    }

    public static List<ShoppingItemDto> fromEntities(List<ShoppingItem> shoppingItems) {
        if (shoppingItems == null) return null;
        return shoppingItems.stream().map(ShoppingItemDto::fromEntity).toList();
    }
}