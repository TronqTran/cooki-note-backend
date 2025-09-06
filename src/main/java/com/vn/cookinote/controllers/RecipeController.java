package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.dtos.responses.ImageUploadResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.services.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequestMapping("/api/recipes")
@RequiredArgsConstructor
public class RecipeController {
    private final RecipeService recipeService;

    @PostMapping("/upload-image")
    public ResponseEntity<ApiResponse<ImageUploadResponse>> uploadImage(@RequestParam("file") MultipartFile image) throws IOException {
        ImageUploadResponse response = recipeService.uploadImage(image);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Tải ảnh thành công", response);
    }
}
