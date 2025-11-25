package com.vn.cookinote.services;

import com.vn.cookinote.dtos.RecipeDto;
import com.vn.cookinote.models.Recipe;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.time.LocalDateTime;
import java.util.List;

public interface RecipeService {
    Recipe createRecipe(RecipeDto recipeDto, Long userId);

    Recipe findRecipeById(Long id);

    Page<Recipe> findAllRecipes(Pageable pageable);

    Page<Recipe> searchRecipes(String keyword, Pageable pageable);

    Page<Recipe> findLikedRecipes(Long userId, Pageable pageable);

    boolean deleteRecipe(Long id, Long userId);

    Recipe updateRecipe(RecipeDto recipeDto, Long id, Long userId);

    Page<Recipe> findMyRecipes(Long userId, Pageable pageable);

    Page<Recipe> findRecipesByCategory(Long id, Pageable pageable);

    Page<Recipe> findRecipesByUserId(Long id, Pageable pageable);

    List<Recipe> findRecipeCreatedBetween(Long userId, LocalDateTime createdAtAfter, LocalDateTime createdAtBefore);

    Page<Recipe> findAllRecipesByAdmin(Pageable pageable);

    void blockRecipe(Long id);

    List<Recipe> findRecipeCreatedBetweenByAdmin(LocalDateTime createdAtAfterDate, LocalDateTime createdAtBeforeDate);

    void unblockRecipe(Long id);
}
