package com.vn.cookinote.services;

import com.vn.cookinote.models.Ingredient;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IngredientService {
    List<Ingredient> getAllIngredients();
}
