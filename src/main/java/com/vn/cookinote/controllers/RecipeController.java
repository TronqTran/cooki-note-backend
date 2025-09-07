package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.RecipeDto;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.services.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/recipes")
@RequiredArgsConstructor
public class RecipeController {
    private final RecipeService recipeService;

    @PostMapping()
    public ResponseEntity<ApiResponse<RecipeDto>> createRecipe(@RequestBody RecipeDto recipeDto, @AuthenticationPrincipal Jwt jwt) {
        String email = jwt.getSubject();
        Recipe recipe = recipeService.createRecipe(recipeDto, email);
        return ApiResponse.toResponseEntity(ApiStatus.CREATED, ApiStatus.CREATED.getMessage(), RecipeDto.fromEntity(recipe));
    }
}
