package com.vn.cookinote.dtos.requests;

import com.vn.cookinote.enums.Difficulty;

import java.util.List;

public record RecipeRequest(
        String title,
        String description,
        String imageUrl,
        String imagePublicId,
        Integer cookTime,
        Integer servings,
        Difficulty difficulty,
        Long categoryId,
        List<RecipeIngredientRequest> ingredients,
        List<StepRequest> steps
) {

}
