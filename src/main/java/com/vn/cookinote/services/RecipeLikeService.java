package com.vn.cookinote.services;

import com.vn.cookinote.models.RecipeLike;
import com.vn.cookinote.models.User;

import java.util.List;

public interface RecipeLikeService {
    RecipeLike likeRecipe(Long recipeId, String email);
    RecipeLike unlikeRecipe(Long recipeId, String email);
    boolean isRecipeLiked(Long recipeId, String email);
    List<User> getRecipeLikeUser(Long recipeId);
}
