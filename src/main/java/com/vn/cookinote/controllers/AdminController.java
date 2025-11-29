package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.*;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.Category;
import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.models.User;
import com.vn.cookinote.services.CategoryService;
import com.vn.cookinote.services.RecipeService;
import com.vn.cookinote.services.UserService;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/v1/admin")
@RequiredArgsConstructor
public class AdminController {
    private final UserService userService;
    private final CategoryService categoryService;
    private final RecipeService recipeService;

    @GetMapping
    public String get() {
        return "GET:: admin controller";
    }
    @PostMapping
    public String post() {
        return "POST:: admin controller";
    }
    @PutMapping
    public String put() {
        return "PUT:: admin controller";
    }
    @DeleteMapping
    public String delete() {
        return "DELETE:: admin controller";
    }


    @GetMapping("/user")
    public ResponseEntity<ApiResponse<Object>> findAllUsers(
            @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
            Pageable pageable) {
        Page<User> allUsers = userService.findAllUsers(pageable);

        return ApiResponse.toResponseEntity(
                ApiStatus.OK,
                "Lấy danh sách người dùng thành công",
                UserDto2.fromEntities(allUsers.getContent())
        );
    }

    @GetMapping("/user/search")
    public ResponseEntity<ApiResponse<Object>> searchUserAll(@RequestParam String keyword) {

        Iterable<User> users = userService.searchUserAll(keyword);
        List<User> userList = new ArrayList<>();
        users.forEach(userList::add);

        return ApiResponse.toResponseEntity(
                ApiStatus.OK,
                "Tìm kiếm người dùng thành công",
                UserDto2.fromEntities(userList)
        );
    }

    @PatchMapping("/user/{id}/ban")
    public ResponseEntity<ApiResponse<Object>> deactivateUser(@PathVariable Long id) {
        userService.banUser(id);
        return ApiResponse.toResponseEntity(
                ApiStatus.OK,
                "Khóa người dùng thành công"
        );
    }

    @PatchMapping("/user/{id}/activate")
    public ResponseEntity<ApiResponse<Object>> activateUser(@PathVariable Long id) {
        userService.activateUser(id);
        return ApiResponse.toResponseEntity(
                ApiStatus.OK,
                "Mở khóa người dùng thành công"
        );
    }

    @PostMapping("/category")
    public ResponseEntity<ApiResponse<CategoryDto1>> createCategory(@RequestBody CategoryDto categoryDto) {

        if (categoryService.existsByName(categoryDto.name()))
            return ApiResponse.toResponseEntity(ApiStatus.CONFLICT, "Danh mục đã tồn tại");

        Category category = categoryService.createCategory(categoryDto);
        return ApiResponse.toResponseEntity(ApiStatus.CREATED, "Thêm mới danh mục thành công", CategoryDto1.fromEntity(category));
    }

    @GetMapping("/category")
    public ResponseEntity<ApiResponse<Iterable<CategoryDto1>>> getAllCategories() {
        List<Category> categories = categoryService.getAllCategories();
        List<CategoryDto1> categoryDTOs = CategoryDto1.fromEntities(categories);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Lấy danh sách danh mục thành công", categoryDTOs);
    }

    @GetMapping("/category/search")
    public ResponseEntity<ApiResponse<Iterable<CategoryDto1>>> searchCategory(@RequestParam String keyword) {
        List<Category> categories = categoryService.searchCategoriesByName(keyword);
        List<CategoryDto1> categoryDTOs = CategoryDto1.fromEntities(categories);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Tìm kiếm danh mục thành công", categoryDTOs);
    }

    @PatchMapping("/category/{id}")
    public ResponseEntity<ApiResponse<CategoryDto1>> updateCategory(@PathVariable Long id, @RequestBody CategoryDto categoryDto) {
        if (categoryService.existsByName(categoryDto.name()))
            return ApiResponse.toResponseEntity(ApiStatus.CONFLICT, "Danh mục đã tồn tại");

        Category category = categoryService.updateCategory(categoryDto, id);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Cập nhật danh mục thành công", CategoryDto1.fromEntity(category));
    }

    @DeleteMapping("/category/{id}")
    public ResponseEntity<ApiResponse<Object>> deleteCategory(@PathVariable Long id) {
        categoryService.deleteCategory(id);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Xóa danh mục thành công");
    }

    @PatchMapping("/category/{id}/restore")
    public ResponseEntity<ApiResponse<Object>> restoreCategory(@PathVariable Long id) {
        categoryService.restoreCategory(id);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Khôi phục danh mục thành công");
    }

    @GetMapping("/recipe")
    public ResponseEntity<ApiResponse<Object>> getAllRecipes(
            @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
            Pageable pageable
    ) {

        Page<Recipe> recipes = recipeService.findAllRecipesByAdmin(pageable);
        List<Recipe> recipeList = new ArrayList<>();
        recipes.forEach(recipeList::add);

        return ApiResponse.toResponseEntity(
                ApiStatus.OK,
                "Lấy danh sách công thức thành công",
                RecipeDto1.fromEntities(recipeList)
        );
    }

    @GetMapping("/recipe/search")
    public ResponseEntity<ApiResponse<Object>> searchRecipeAll(@RequestParam String keyword) {

        List<Recipe> recipes = recipeService.fullTextSearchAdmin(keyword, Pageable.unpaged());

        return ApiResponse.toResponseEntity(
                ApiStatus.OK,
                "Tìm kiếm công thức thành công",
                RecipeDto1.fromEntities(recipes)
        );
    }

    @PatchMapping("/recipe/{id}/block")
    public ResponseEntity<ApiResponse<Object>> blockRecipe(@PathVariable Long id) {
        recipeService.blockRecipe(id);
        return ApiResponse.toResponseEntity(
                ApiStatus.OK,
                "Khóa công thức thành công"
        );
    }

    @PatchMapping("/recipe/{id}/unblock")
    public ResponseEntity<ApiResponse<Object>> activateRecipe(@PathVariable Long id) {
        recipeService.unblockRecipe(id);
        return ApiResponse.toResponseEntity(
                ApiStatus.OK,
                "Mở khóa công thức thành công"
        );
    }

    @GetMapping("/stats/created-between")
    public ResponseEntity<ApiResponse<Object>> getRecipesCreatedBetween(
            @RequestParam("createdAtAfter") String createdAtAfter,
            @RequestParam("createdAtBefore") String createdAtBefore) {
        LocalDateTime createdAtAfterDate = LocalDate.parse(createdAtAfter).atStartOfDay();
        LocalDateTime createdAtBeforeDate = LocalDate.parse(createdAtBefore).atTime(23, 59, 59);
        List<Recipe> recipes = recipeService.findRecipeCreatedBetweenByAdmin(
                createdAtAfterDate,
                createdAtBeforeDate
        );
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
