package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.RecipeDto;
import com.vn.cookinote.dtos.RecipeDto1;
import com.vn.cookinote.dtos.RecipeDto2;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.services.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/recipes")
@RequiredArgsConstructor
public class RecipeController {
    private final RecipeService recipeService;

    @PostMapping()
    public ResponseEntity<ApiResponse<RecipeDto2>> createRecipe(@RequestBody RecipeDto recipeDto, @AuthenticationPrincipal Jwt jwt) {
        String email = jwt.getSubject();
        Recipe recipe = recipeService.createRecipe(recipeDto, email);
        return ApiResponse.toResponseEntity(ApiStatus.CREATED, ApiStatus.CREATED.getMessage(), RecipeDto2.fromEntity(recipe));
    }

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<RecipeDto2>> getRecipeById(@PathVariable Long id) {
        Recipe recipe = recipeService.findRecipeById(id);
        if (recipe == null) {
            return ApiResponse.toResponseEntity(ApiStatus.NOT_FOUND, ApiStatus.NOT_FOUND.getMessage());
        }
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto2.fromEntity(recipe));
    }

    @GetMapping()
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> getAllRecipes(
            @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
            Pageable pageable) {
        Page<Recipe> recipe = recipeService.findAllRecipes(pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto1.fromEntities(recipe.getContent()));
    }

    @GetMapping("/search")
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> searchRecipes(@RequestParam("keyword") String keyword,
                                                                       @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
                                                                       Pageable pageable) {
        Page<Recipe> recipe = recipeService.searchRecipes(keyword, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto1.fromEntities(recipe.getContent()));
    }

    @GetMapping("/like")
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> getLikedRecipes(@AuthenticationPrincipal Jwt jwt,
                                                                         @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
                                                                         Pageable pageable) {
        String email = jwt.getSubject();
        Page<Recipe> recipe = recipeService.findLikedRecipes(email, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto1.fromEntities(recipe.getContent()));
    }

    @GetMapping("/me")
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> getMyRecipes(@AuthenticationPrincipal Jwt jwt,
                                                                      @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
                                                                      Pageable pageable) {
        String email = jwt.getSubject();
        Page<Recipe> recipe = recipeService.findMyRecipes(email, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto1.fromEntities(recipe.getContent()));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<ApiResponse<Void>> deleteRecipe(@PathVariable Long id, @AuthenticationPrincipal Jwt jwt) {
        String email = jwt.getSubject();
        boolean isDeleted = recipeService.deleteRecipe(id, email);
        if (!isDeleted) {
            return ApiResponse.toResponseEntity(ApiStatus.NOT_FOUND, ApiStatus.NOT_FOUND.getMessage());
        }
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Công thức đã được xóa thành công");
    }

    @GetMapping("/category/{id}")
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> getRecipesByCategory(@PathVariable Long id,
                                                                              @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
                                                                              Pageable pageable) {
        Page<Recipe> recipe = recipeService.findRecipesByCategory(id, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto1.fromEntities(recipe.getContent()));
    }

    @GetMapping("/user/{id}")
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> getRecipesByUserId(@PathVariable Long id,
                                                                              @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
                                                                              Pageable pageable) {
        Page<Recipe> recipe = recipeService.findRecipesByUserId(id, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto1.fromEntities(recipe.getContent()));
    }
}