package com.vn.cookinote.services;

import com.vn.cookinote.dtos.RecipeDto;
import com.vn.cookinote.models.Recipe;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface RecipeService {
    Recipe createRecipe(RecipeDto recipeDto, String email);

    Recipe findRecipeById(Long id);

    Page<Recipe> findAllRecipes(Pageable pageable);

    Page<Recipe> searchRecipes(String keyword, Pageable pageable);

    Page<Recipe> findLikedRecipes(String email, Pageable pageable);

    boolean deleteRecipe(Long id, String email);

    Recipe updateRecipe(RecipeDto recipeDto, Long id, String email);

    Page<Recipe> findMyRecipes(String email, Pageable pageable);

    Page<Recipe> findRecipesByCategory(Long id, Pageable pageable);

    Page<Recipe> findRecipesByUserId(Long id, Pageable pageable);
}
