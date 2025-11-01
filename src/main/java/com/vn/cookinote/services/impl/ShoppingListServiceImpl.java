package com.vn.cookinote.services.impl;

import com.vn.cookinote.enums.ShoppingListStatus;
import com.vn.cookinote.models.*;
import com.vn.cookinote.models.keys.ShoppingItemKey;
import com.vn.cookinote.repositories.RecipeRepository;
import com.vn.cookinote.repositories.ShoppingItemRepository;
import com.vn.cookinote.repositories.ShoppingListRepository;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.services.ShoppingListService;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ShoppingListServiceImpl implements ShoppingListService {
    private final RecipeRepository recipeRepository;
    private final UserRepository userRepository;
    private final ShoppingListRepository shoppingListRepository;
    private final ShoppingItemRepository shoppingItemRepository;


    @Override
    public Page<ShoppingList> findMyShoppingLists(Long userId, Pageable pageable) {
        log.info("Finding my shopping lists by userId: {}", userId);
        Pageable sortedPageable = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                Sort.by(Sort.Direction.DESC, "createdAt")
        );

        User user = userRepository.findById(userId).orElse(null);

        return shoppingListRepository.findByIsDeletedAndUser(false, user, sortedPageable);
    }

    @Override
    public Page<ShoppingList> findMyShoppingListsToday(Long userId, Pageable pageable) {
        log.info("Finding my shopping lists today by userId: {}", userId);
        Pageable sortedPageable = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                Sort.by(Sort.Direction.DESC, "createdAt")
                );

        User user = userRepository.findById(userId).orElse(null);

        return shoppingListRepository.findByIsDeletedAndUserAndPlannedDate(false, user, LocalDate.now(), sortedPageable);
    }

    @Override
    public ShoppingList createFromRecipe(Long userId, Long recipeId, LocalDate plannedDate) {
        Recipe recipe = recipeRepository.findById(recipeId)
                .orElseThrow(() -> new EntityNotFoundException("Recipe not found: " + recipeId));

        User user = userRepository.findById(userId)
                .orElseThrow(() -> new EntityNotFoundException("User not found: " + userId));

        ShoppingList shoppingList = ShoppingList.builder()
                .user(user)
                .title("Nguyên liệu cho: " + recipe.getTitle())
                .plannedDate(plannedDate)
                .status(ShoppingListStatus.ACTIVE)
                .isDeleted(false)
                .build();

        // persist to get shoppingList.id (needed for ShoppingItemKey)
        shoppingList = shoppingListRepository.save(shoppingList);

        List<ShoppingItem> shoppingItems = new ArrayList<>();
        List<RecipeIngredient> ingredients = recipe.getIngredients();
        for (RecipeIngredient ri : ingredients) {
            ShoppingItemKey key = new ShoppingItemKey(shoppingList.getId(), ri.getIngredient().getId());

            ShoppingItem item = ShoppingItem.builder()
                    .id(key)
                    .shoppingList(shoppingList)
                    .ingredient(ri.getIngredient())
                    .quantity(ri.getQuantity())
                    .unit(ri.getUnit())
                    .purchased(false)
                    .build();
            shoppingItems.add(item);

            shoppingItemRepository.save(item);
        }

        shoppingList.setItems(shoppingItems);

        // option: reload shoppingList with items if needed
        return shoppingListRepository.findById(shoppingList.getId()).orElse(shoppingList);
    }

    @Override
    public ShoppingList deleteShoppingList(Long id, Long userId) {
        log.info("Deleting shopping list by id: {} and userId: {}", id, userId);
        User user = userRepository.findById(userId).orElse(null);
        ShoppingList shoppingList = shoppingListRepository.findById(id).orElse(null);
        assert user != null;
        assert shoppingList != null;
        if (user.equals(shoppingList.getUser())) {
            shoppingList.setIsDeleted(true);
            shoppingListRepository.save(shoppingList);
            return shoppingList;
        }
        return null;
    }
}
