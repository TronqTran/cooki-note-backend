package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Category;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;

@Builder
public record CategoryDto1(Long id, String name, String description, boolean isDeleted) implements Serializable {
    public static CategoryDto1 fromEntity(Category category) {
        return CategoryDto1.builder()
                .id(category.getId())
                .name(category.getName())
                .description(category.getDescription())
                .isDeleted(category.getIsDeleted())
                .build();
    }
    public static List<CategoryDto1> fromEntities(List<Category> categories) {
        if (categories == null) return null;
        return categories.stream()
                .map(CategoryDto1::fromEntity)
                .toList();
    }
}