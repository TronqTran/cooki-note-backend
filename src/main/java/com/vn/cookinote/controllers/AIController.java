package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.MealPlanDto;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.services.AIService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

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

    @PostMapping("/recipe")
    public Object generateRecipe(@RequestBody String message) {
        return aIService.generateRecipe(message);
    }

    @PostMapping("/generate-recipe")
    public ResponseEntity<ApiResponse<String>> generateRecipe(@RequestBody Map<String, String> request) {
        String rawContent = request.get("content");

        // Validate đầu vào
        if (rawContent == null || rawContent.trim().isEmpty()) {
            return ApiResponse.toResponseEntity(ApiStatus.BAD_REQUEST, "Nội dung không được để trống");
        }

        try {
            // Gọi Service để xử lý prompt
            String jsonResult = aIService.generateRecipeFromContent(rawContent);

            // Trả về JSON String để Frontend tự parse và điền vào form
            return ApiResponse.toResponseEntity(ApiStatus.OK, "Tạo công thức thành công", jsonResult);
        } catch (Exception e) {
            return ApiResponse.toResponseEntity(ApiStatus.INTERNAL_SERVER_ERROR, "Lỗi khi xử lý AI: " + e.getMessage());
        }
    }
}
