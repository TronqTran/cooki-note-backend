package com.vn.cookinote.services;

import com.vn.cookinote.models.ShoppingList;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.time.LocalDate;

public interface ShoppingListService {
    Page<ShoppingList> findMyShoppingLists(String email, Pageable pageable);

    Page<ShoppingList> findMyShoppingListsToday(String email, Pageable pageable);

    ShoppingList createFromRecipe(String email, Long recipeId, LocalDate plannedDate);
}
