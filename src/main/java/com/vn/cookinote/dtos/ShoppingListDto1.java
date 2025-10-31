package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.ShoppingListStatus;
import com.vn.cookinote.models.ShoppingList;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

@Builder
public record ShoppingListDto1(Long id, String title, LocalDate plannedDate, String note, ShoppingListStatus status,
                               List<ShoppingItemDto> items) implements Serializable {
    public static ShoppingListDto1 fromEntity(ShoppingList shoppingList) {
        if (shoppingList == null) return null;
        return ShoppingListDto1.builder()
                .id(shoppingList.getId())
                .title(shoppingList.getTitle())
                .plannedDate(shoppingList.getPlannedDate())
                .note(shoppingList.getNote())
                .status(shoppingList.getStatus())
                .items(ShoppingItemDto.fromEntities(shoppingList.getItems()))
                .build();
    }

    public static List<ShoppingListDto1> fromEntities(List<ShoppingList> shoppingLists) {
        if (shoppingLists == null) return null;
        return shoppingLists.stream().map(ShoppingListDto1::fromEntity).toList();
    }

}