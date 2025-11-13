package com.vn.cookinote.services;

import com.vn.cookinote.dtos.MealPlanDto;
import com.vn.cookinote.models.MealPlan;

import java.util.List;

public interface MealPlanService {
    List<MealPlan> createMealPlan(Long userId, String message);

    List<MealPlan> getMealPlan(Long userId);
}
