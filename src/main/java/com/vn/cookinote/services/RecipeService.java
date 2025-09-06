package com.vn.cookinote.services;

import com.vn.cookinote.dtos.requests.RecipeRequest;
import com.vn.cookinote.dtos.responses.ImageUploadResponse;
import com.vn.cookinote.models.Recipe;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Map;

public interface RecipeService {
    Recipe createRecipe(RecipeRequest request, MultipartFile image) throws IOException;
    ImageUploadResponse uploadImage(MultipartFile image) throws IOException;
}
