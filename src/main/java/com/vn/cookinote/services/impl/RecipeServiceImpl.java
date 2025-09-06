package com.vn.cookinote.services.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.vn.cookinote.dtos.requests.RecipeRequest;
import com.vn.cookinote.dtos.responses.ImageUploadResponse;
import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.services.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
@RequiredArgsConstructor
public class RecipeServiceImpl implements RecipeService {
    private final Cloudinary cloudinary;

    @Override
    public Recipe createRecipe(RecipeRequest request, MultipartFile image) throws IOException {
        return null;
    }

    @Override
    public ImageUploadResponse uploadImage(MultipartFile image) throws IOException {
        var uploadResult = cloudinary.uploader().upload(image.getBytes(), ObjectUtils.asMap(
                "folder", "cooki-note/recipes",
                "resource_type", "image",
                "overwrite", true

        ));

        String publicId = (String) uploadResult.get("public_id");
        String url = (String) uploadResult.get("secure_url");

        return new ImageUploadResponse(url, publicId);
    }
}
