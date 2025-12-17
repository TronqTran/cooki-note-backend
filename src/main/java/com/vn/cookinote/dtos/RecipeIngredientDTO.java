package com.vn.cookinote.dtos;

import com.vn.cookinote.models.RecipeIngredient;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import lombok.Builder;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Builder
public record RecipeIngredientDto(
        @NotNull(message = "Nguyên liệu không được để trống")
        @Valid
        IngredientDto ingredient,


        @NotNull(message = "Số lượng không được để trống")
        @Positive(message = "Số lượng phải lớn hơn 0")
        @Digits(integer = 10, fraction = 2, message = "Số lượng tối đa 2 chữ số thập phân")
        @DecimalMax(value = "10000", message = "Số lượng không được vượt quá 10.000")
        BigDecimal quantity,

        @NotBlank(message = "Đơn vị không được để trống")
        @Size(max = 50, message = "Đơn vị tối đa 50 ký tự")
        String unit,
        Boolean required,

        @Size(max = 255, message = "Ghi chú tối đa 255 ký tự")
        String note) implements Serializable {

    public static RecipeIngredientDto fromEntity(RecipeIngredient recipeIngredient) {
        if (recipeIngredient == null) return null;
        return RecipeIngredientDto.builder()
                .ingredient(IngredientDto.fromEntity(recipeIngredient.getIngredient()))
                .quantity(recipeIngredient.getQuantity())
                .unit(recipeIngredient.getUnit())
                .required(recipeIngredient.getRequired())
                .note(recipeIngredient.getNote())
                .build();
    }

    public static List<RecipeIngredientDto> fromEntities(List<RecipeIngredient> ingredients) {
        if (ingredients == null) return null;
        return ingredients.stream()
                .map(RecipeIngredientDto::fromEntity)
                .toList();
    }
}