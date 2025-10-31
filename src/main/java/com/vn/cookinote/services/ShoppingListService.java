package com.vn.cookinote.services;

import com.vn.cookinote.models.ShoppingList;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.time.LocalDate;

public interface ShoppingListService {
    Page<ShoppingList> findMyShoppingLists(Long userId, Pageable pageable);

    Page<ShoppingList> findMyShoppingListsToday(Long userId, Pageable pageable);

    ShoppingList createFromRecipe(Long userId, Long recipeId, LocalDate plannedDate);
}
