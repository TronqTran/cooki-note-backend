package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.MealType;
import com.vn.cookinote.models.MealPlan;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

@Builder
public record MealPlanDto(Long id, RecipeDto4 recipe, LocalDate mealDate, MealType mealType) implements Serializable {

    public static MealPlanDto fromEntity(MealPlan mealPlan) {
        if (mealPlan == null) return null;
        return MealPlanDto.builder()
                .id(mealPlan.getId())
                .recipe(RecipeDto4.fromEntity(mealPlan.getRecipe()))
                .mealDate(mealPlan.getMealDate())
                .mealType(mealPlan.getMealType())
                .build();
    }

    public static List<MealPlanDto> fromEntities(List<MealPlan> mealPlans) {
        if (mealPlans == null) return null;
        return mealPlans.stream()
                .map(MealPlanDto::fromEntity)
                .toList();
    }
}