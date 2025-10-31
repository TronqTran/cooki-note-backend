package com.vn.cookinote.services;

import com.vn.cookinote.models.RecipeLike;
import com.vn.cookinote.models.User;

import java.util.List;

public interface RecipeLikeService {
    RecipeLike likeRecipe(Long recipeId, Long userId);

    RecipeLike unlikeRecipe(Long recipeId, Long userId);

    boolean isRecipeLiked(Long recipeId, Long userId);

    List<User> getRecipeLikeUser(Long recipeId);
}
