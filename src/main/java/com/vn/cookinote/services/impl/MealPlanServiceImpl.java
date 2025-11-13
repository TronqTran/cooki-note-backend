package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.MealPlanDto;
import com.vn.cookinote.models.MealPlan;
import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.models.User;
import com.vn.cookinote.repositories.MealPlanRepository;
import com.vn.cookinote.repositories.RecipeRepository;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.services.AIService;
import com.vn.cookinote.services.MealPlanService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class MealPlanServiceImpl implements MealPlanService {
    private final UserRepository userRepository;
    private final MealPlanRepository mealPlanRepository;
    private final AIService aIService;
    private final RecipeRepository recipeRepository;

    @Override
    @Transactional
    public List<MealPlan> createMealPlan(Long userId, String message) {

        List<MealPlan> mealPlans = new ArrayList<>();
        User user = userRepository.findById(userId).orElse(null);
        assert user != null;

        // Clear all meal plans before create new
        mealPlanRepository.deleteAllByUserId(userId);
        mealPlanRepository.flush();

        List<MealPlanDto> mealPlanDtos = aIService.generateMealPlan(message);


        if (mealPlanDtos != null) {
            mealPlanDtos.forEach(mealPlanDto -> {
                Recipe recipe = recipeRepository.findById(mealPlanDto.recipe().id()).orElse(null);
                assert recipe != null;
                MealPlan mealPlan = MealPlan.builder()
                        .user(user)
                        .recipe(recipe)
                        .mealDate(mealPlanDto.mealDate())
                        .mealType(mealPlanDto.mealType())
                        .isDeleted(false)
                        .build();
                mealPlans.add(mealPlanRepository.save(mealPlan));
            });
        }

        return mealPlans;
    }

    @Override
    public List<MealPlan> getMealPlan(Long userId) {
        return mealPlanRepository.findAllByUserId(userId);
    }
}
