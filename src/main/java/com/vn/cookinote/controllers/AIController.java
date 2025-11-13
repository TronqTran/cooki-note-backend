package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.MealPlanDto;
import com.vn.cookinote.services.AIService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/ai")
@RequiredArgsConstructor
public class AIController {

    private final AIService aIService;

    @PostMapping("/chat")
    public List<MealPlanDto> chatWithAI(@RequestBody String message) {
        // Placeholder for AI chat functionality
        return aIService.generateMealPlan(message);
    }
}
