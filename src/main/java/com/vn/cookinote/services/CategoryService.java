package com.vn.cookinote.services;

import com.vn.cookinote.dtos.CategoryDto;
import com.vn.cookinote.dtos.CategoryDto1;
import com.vn.cookinote.models.Category;

public interface CategoryService {
    boolean existsByName(String name);

    Category createCategory(CategoryDto categoryDto);

    Iterable<Category> getAllCategories();

    Category updateCategory(CategoryDto categoryDto, Long id);

    void deleteCategory(Long id);
}
