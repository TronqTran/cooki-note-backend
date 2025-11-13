package com.vn.cookinote.services;

import com.vn.cookinote.dtos.MealPlanDto;

import java.util.List;

public interface AIService {
    List<MealPlanDto> generateMealPlan(String message);
}
