package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.CategoryDto;
import com.vn.cookinote.dtos.CategoryDto1;
import com.vn.cookinote.models.Category;
import com.vn.cookinote.repositories.CategoryRepository;
import com.vn.cookinote.services.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

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
                .build();
        return categoryRepository.save(category);
    }

    @Override
    public List<Category> getAllActiveCategories() {
        Sort sort = Sort.by(Sort.Direction.DESC, "createdAt");
        return categoryRepository.findAllByIsDeleted(false, sort);
    }

    @Override
    public List<Category> getAllCategories() {
        Sort sort = Sort.by(Sort.Direction.DESC, "createdAt");
        return categoryRepository.findAll(sort);
    }

    @Override
    public Category updateCategory(CategoryDto categoryDto, Long id) {
        Category category = categoryRepository.findById(id).orElse(null);
        if (category != null) {
            category.setName(categoryDto.name());
            category.setDescription(categoryDto.description());
            return categoryRepository.save(category);
        }
        return null;
    }

    @Override
    public void deleteCategory(Long id) {
        categoryRepository.findById(id).ifPresent(category -> {
            category.setIsDeleted(true);
            categoryRepository.save(category);
        });
    }

    @Override
    public void restoreCategory(Long id) {
        categoryRepository.findById(id).ifPresent(category -> {
            category.setIsDeleted(false);
            categoryRepository.save(category);
        });
    }
}
