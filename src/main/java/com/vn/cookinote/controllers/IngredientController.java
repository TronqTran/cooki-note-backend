package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.IngredientDto;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.Ingredient;
import com.vn.cookinote.services.IngredientService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/ingredient")
@RequiredArgsConstructor
public class IngredientController {

    private final IngredientService ingredientService;

    @GetMapping
    public ResponseEntity<ApiResponse<List<IngredientDto>>> getAllIngredients() {
        List<Ingredient> allIngredients = ingredientService.getAllIngredients();
        return ApiResponse.toResponseEntity(
                ApiStatus.OK,
                "Lấy danh sách nguyên liệu thành công",
                IngredientDto.fromEntities(allIngredients)
        );
    }
}
