package com.vn.cookinote.services;

import com.vn.cookinote.dtos.RecipeDto1;
import org.springframework.data.redis.core.ZSetOperations;

import java.util.List;

public interface ViewHistoryService {
    void saveViewHistory(String email, RecipeDto1 recipe);

    void removeIfExists(ZSetOperations<String, String> zset, String key, Long recipeId);

    List<RecipeDto1> getRecentViews(String email, int limit);

    void removeRecentViews(String email, Long recipeId);

    void removeRecipeFromAllRecentViews(Long recipeId);

}
