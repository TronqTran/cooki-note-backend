package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.Difficulty;
import com.vn.cookinote.models.Recipe;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Builder
public record RecipeDto(
        @NotBlank(message = "Tên công thức không được để trống")
        @Size(min = 3, max = 150, message = "Tên công thức phải từ 3–150 ký tự")
        @Pattern(
                regexp = "^[^<>%$]*$",
                message = "Tên công thức chứa ký tự không hợp lệ"
        )
        String title,

        @Size(max = 500, message = "Mô tả tối đa 500 ký tự")
        @Pattern(
                regexp = "^[^<>%$]*$",
                message = "Mô tả chứa ký tự không hợp lệ"
        )
        String description,

        @NotNull(message = "Thời gian nấu không hợp lệ")
        @Min(value = 1, message = "Thời gian nấu phải lớn hơn 0")
        @Max(value = 1440, message = "Thời gian nấu không quá 1440")
        Integer cookTimeMinutes,

        @NotNull(message = "Khẩu phần ăn không hợp lệ")
        @Min(value = 1, message = "Số khẩu phần phải lớn hơn 0")
        @Max(value = 100, message = "Số khẩu phần không quá 100")
        Integer servings,

        @NotNull(message = "Độ khó không được để trống")
        Difficulty difficulty,

        Long viewsCount,
        LocalDateTime createdAt,
        LocalDateTime updatedAt,

        @NotNull(message = "Danh mục không được để trống")
        CategoryDto1 category,
        UserDto1 user,
        List<RecipeMediaDto> medias,

        @NotEmpty(message = "Phải có ít nhất 1 bước nấu")
        List<@Valid RecipeIngredientDto> ingredients,

        @NotEmpty(message = "Phải có ít nhất 1 nguyên liệu")
        List<@Valid StepDto> steps) implements Serializable {

    public static RecipeDto fromEntity(Recipe recipe) {
        if (recipe == null) return null;
        return RecipeDto.builder()
                .title(recipe.getTitle())
                .description(recipe.getDescription())
                .cookTimeMinutes(recipe.getCookTimeMinutes())
                .servings(recipe.getServings())
                .difficulty(recipe.getDifficulty())
                .viewsCount(recipe.getViewsCount())
                .createdAt(recipe.getCreatedAt())
                .updatedAt(recipe.getUpdatedAt())
                .category(CategoryDto1.fromEntity(recipe.getCategory()))
                .steps(StepDto.fromEntities(recipe.getSteps()))
                .ingredients(RecipeIngredientDto.fromEntities(recipe.getIngredients()))
                .medias(RecipeMediaDto.fromEntities(recipe.getMedias()))
                .user(UserDto1.fromEntity(recipe.getUser()))
                .build();
    }
}