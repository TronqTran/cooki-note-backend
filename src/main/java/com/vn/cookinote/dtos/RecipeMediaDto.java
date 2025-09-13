package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.ProfileMediaType;
import com.vn.cookinote.models.RecipeMedia;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;


@Builder
public record RecipeMediaDto(MediaDto media, ProfileMediaType type) implements Serializable {
    public static RecipeMediaDto fromEntity(RecipeMedia recipeMedia) {
        if (recipeMedia == null) return null;
        return RecipeMediaDto.builder()
                .media(MediaDto.fromEntity(recipeMedia.getMedia()))
                .type(recipeMedia.getType())
                .build();
    }
    public static List<RecipeMediaDto> fromEntities(List<RecipeMedia> medias) {
        if (medias == null) return null;
        return medias.stream()
                .map(RecipeMediaDto::fromEntity)
                .toList();
    }
}