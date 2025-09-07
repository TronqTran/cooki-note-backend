package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Category;
import lombok.Builder;

import java.io.Serializable;
import java.util.stream.StreamSupport;

@Builder
public record CategoryDto(Long id, String name, String description) implements Serializable {

    public static CategoryDto fromEntity(Category category) {
        return CategoryDto.builder()
                .id(category.getId())
                .name(category.getName())
                .description(category.getDescription())
                .build();
    }

    public static Iterable<CategoryDto> fromEntities(Iterable<Category> categories) {
        return StreamSupport.stream(categories.spliterator(), false)
                .map(CategoryDto::fromEntity)
                .toList();
    }

}