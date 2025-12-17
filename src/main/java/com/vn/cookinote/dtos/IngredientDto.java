package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Ingredient;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;
import java.util.stream.StreamSupport;

@Builder
public record IngredientDto(Long id,
                            @NotBlank(message = "Tên nguyên liệu không được để trống")
                            @Pattern(
                                    regexp = "^[^<>%$]*$",
                                    message = "Tên nguyên liệu chứa ký tự không hợp lệ"
                            )
                            @Size(min = 1, max = 100, message = "Tên nguyên liệu phải từ 1–100 ký tự")
                            String name) implements Serializable {

    public static IngredientDto fromEntity(Ingredient ingredient) {
        if (ingredient == null) return null;
        return IngredientDto.builder()
                .id(ingredient.getId())
                .name(ingredient.getName())
                .build();
    }

    public static List<IngredientDto> fromEntities(Iterable<Ingredient> ingredients) {
        if (ingredients == null) return null;
        return StreamSupport.stream(ingredients.spliterator(), false)
                .map(IngredientDto::fromEntity)
                .toList();
    }
}