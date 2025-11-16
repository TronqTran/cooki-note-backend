package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.CategoryDto;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.Category;
import com.vn.cookinote.services.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/category")
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;

    @GetMapping
    public ResponseEntity<ApiResponse<Iterable<CategoryDto>>> getAllCategories() {
        Iterable<Category> categories = categoryService.getAllCategories();
        Iterable<CategoryDto> categoryDTOs = CategoryDto.fromEntities(categories);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Lấy danh sách danh mục thành công", categoryDTOs);
    }
}
