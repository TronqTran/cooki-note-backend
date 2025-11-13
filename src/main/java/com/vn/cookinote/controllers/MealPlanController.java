package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.MealPlanDto;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.MealPlan;
import com.vn.cookinote.services.MealPlanService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/meal-plans")
@RequiredArgsConstructor
public class MealPlanController {

    private final MealPlanService mealPlanService;

    @GetMapping("/me")
    ResponseEntity<ApiResponse<List<MealPlanDto>>> getMealPlans(@AuthenticationPrincipal Jwt jwt) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));

        return ApiResponse.toResponseEntity(
                ApiStatus.OK,
                "Lấy kế hoạch bữa ăn thành công",
                MealPlanDto.fromEntities(mealPlanService.getMealPlan(userid))
        );
    }

    @PostMapping
    ResponseEntity<ApiResponse<Object>> createMealPlan(@RequestBody String message,
                                                       @AuthenticationPrincipal Jwt jwt) {

        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));

        List<MealPlan> mealPlan = mealPlanService.createMealPlan(userid, message);

        return ApiResponse.toResponseEntity(
                ApiStatus.CREATED,
                "Tạo kế hoạch bữa ăn thành công",
                MealPlanDto.fromEntities(mealPlan)
        );
    }
}
