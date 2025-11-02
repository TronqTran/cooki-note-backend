package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.RecipeDto;
import com.vn.cookinote.dtos.RecipeDto1;
import com.vn.cookinote.dtos.RecipeDto2;
import com.vn.cookinote.dtos.RecipeDto3;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.services.RecipeService;
import com.vn.cookinote.services.ViewHistoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/v1/recipes")
@RequiredArgsConstructor
public class RecipeController {
    private final RecipeService recipeService;
    private final ViewHistoryService viewHistoryService;

    @PostMapping()
    public ResponseEntity<ApiResponse<RecipeDto2>> createRecipe(@RequestBody RecipeDto recipeDto, @AuthenticationPrincipal Jwt jwt) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));
        Recipe recipe = recipeService.createRecipe(recipeDto, userid);
        return ApiResponse.toResponseEntity(ApiStatus.CREATED, ApiStatus.CREATED.getMessage(), RecipeDto2.fromEntity(recipe));
    }

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<RecipeDto2>> getRecipeById(@PathVariable Long id, @AuthenticationPrincipal Jwt jwt) {
        String email = jwt.getSubject();
        Recipe recipe = recipeService.findRecipeById(id);
        if (recipe == null) {
            return ApiResponse.toResponseEntity(ApiStatus.NOT_FOUND, ApiStatus.NOT_FOUND.getMessage());
        }
        viewHistoryService.saveViewHistory(email, RecipeDto1.fromEntity(recipe));
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto2.fromEntity(recipe));
    }

    @PatchMapping("/{id}")
    public ResponseEntity<ApiResponse<RecipeDto2>> updateRecipe(@PathVariable Long id, @RequestBody RecipeDto recipeDto, @AuthenticationPrincipal Jwt jwt) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));
        Recipe recipe = recipeService.updateRecipe(recipeDto, id, userid);
        if (recipe == null) {
            return ApiResponse.toResponseEntity(ApiStatus.NOT_FOUND, ApiStatus.NOT_FOUND.getMessage());
        }
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Công thức đã được cập nhật thành công", RecipeDto2.fromEntity(recipe));
    }

    @GetMapping()
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> getAllRecipes(
            @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
            Pageable pageable) {
        Page<Recipe> recipe = recipeService.findAllRecipes(pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto1.fromEntities(recipe.getContent()));
    }

    @GetMapping("/search")
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> searchRecipes(@RequestParam("keyword") String keyword, Pageable pageable) {
        Page<Recipe> recipe = recipeService.searchRecipes(keyword, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto1.fromEntities(recipe.getContent()));
    }

    @GetMapping("/like")
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> getLikedRecipes(@AuthenticationPrincipal Jwt jwt,
                                                                         @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
                                                                         Pageable pageable) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));
        Page<Recipe> recipe = recipeService.findLikedRecipes(userid, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto1.fromEntities(recipe.getContent()));
    }

    @GetMapping("/me")
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> getMyRecipes(@AuthenticationPrincipal Jwt jwt,
                                                                      @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
                                                                      Pageable pageable) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));
        Page<Recipe> recipe = recipeService.findMyRecipes(userid, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), RecipeDto1.fromEntities(recipe.getContent()));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<ApiResponse<Void>> deleteRecipe(@PathVariable Long id, @AuthenticationPrincipal Jwt jwt) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));
        boolean isDeleted = recipeService.deleteRecipe(id, userid);
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

    @GetMapping("/recent-views")
    public ResponseEntity<ApiResponse<List<RecipeDto1>>> getRecentViewedRecipes(@AuthenticationPrincipal Jwt jwt,
                                                                                 @RequestParam(value = "limit", defaultValue = "10") int limit) {
        String email = jwt.getSubject();
        List<RecipeDto1> recentViews = viewHistoryService.getRecentViews(email, limit);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), recentViews);
    }

    @GetMapping("/stats/created-between")
    public ResponseEntity<ApiResponse<Object>> getRecipesCreatedBetween(
            @AuthenticationPrincipal Jwt jwt,
            @RequestParam("createdAtAfter") String createdAtAfter,
            @RequestParam("createdAtBefore") String createdAtBefore) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));
        LocalDateTime createdAtAfterDate = LocalDate.parse(createdAtAfter).atStartOfDay();
        LocalDateTime createdAtBeforeDate = LocalDate.parse(createdAtBefore).atTime(23, 59, 59);
        List<Recipe> recipes = recipeService.findRecipeCreatedBetween(userid, createdAtAfterDate, createdAtBeforeDate);
        if (recipes.isEmpty()) {
            return ApiResponse.toResponseEntity(ApiStatus.NOT_FOUND, ApiStatus.NOT_FOUND.getMessage());
        }

        int recipeCount = recipes.size();
        long totalLikes = recipes.stream()
                .mapToLong(r -> r.getLikes() == null ? 0L : r.getLikes().size())
                .sum();
        long totalComments = recipes.stream()
                .mapToLong(r -> r.getComments() == null ? 0L : r.getComments().size())
                .sum();
        long totalViews = recipes.stream()
                .mapToLong(r -> r.getViewsCount() == null ? 0L : r.getViewsCount())
                .sum();

        Map<String, Object> stats = new HashMap<>();
        stats.put("recipeCount", recipeCount);
        stats.put("totalLikes", totalLikes);
        stats.put("totalComments", totalComments);
        stats.put("totalViews", totalViews);
        stats.put("recipes", RecipeDto3.fromEntities(recipes));

        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), stats);
    }
}