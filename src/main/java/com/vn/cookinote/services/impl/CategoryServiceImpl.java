package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.CategoryDto;
import com.vn.cookinote.models.Category;
import com.vn.cookinote.repositories.CategoryRepository;
import com.vn.cookinote.services.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;

    @Override
    public boolean existsByName(String name) {
        return categoryRepository.existsByName(name);
    }

    @Override
    public Category createCategory(CategoryDto categoryDto) {
        Category category = Category.builder()
                .name(categoryDto.name())
                .description(categoryDto.description())
                .isDeleted(false)
                .isActive(true)
                .build();
        return categoryRepository.save(category);
    }

    @Override
    public Iterable<Category> getAllCategories() {
        return categoryRepository.findAll();
    }
}
