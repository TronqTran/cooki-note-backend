package com.vn.cookinote.services;

import com.vn.cookinote.dtos.RecipeDto;
import com.vn.cookinote.models.Recipe;

public interface RecipeService {
    Recipe createRecipe(RecipeDto recipeDto, String email);

}
