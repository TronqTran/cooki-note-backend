package com.vn.cookinote.services;

import com.vn.cookinote.dtos.MealPlanDto;
import com.vn.cookinote.dtos.RecipeDto;
import com.vn.cookinote.dtos.RecipeDto5;
import com.vn.cookinote.models.Recipe;

import java.util.List;

public interface AIService {
    List<MealPlanDto> generateMealPlan(String message);

    RecipeDto5 generateRecipe(String message);

    String generateRecipeFromContent(String content);
}
