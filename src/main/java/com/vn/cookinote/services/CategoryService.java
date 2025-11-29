package com.vn.cookinote.services;

import com.vn.cookinote.dtos.CategoryDto;
import com.vn.cookinote.models.Category;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryService {
    boolean existsByName(String name);

    Category createCategory(CategoryDto categoryDto);

    List<Category> getAllActiveCategories();

    List<Category> getAllCategories();

    Category updateCategory(CategoryDto categoryDto, Long id);

    void deleteCategory(Long id);

    void restoreCategory(Long id);

    List<Category> searchCategoriesByName(String keyword);
}
