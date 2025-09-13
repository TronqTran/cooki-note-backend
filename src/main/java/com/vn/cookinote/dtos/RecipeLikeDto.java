package com.vn.cookinote.dtos;

import com.vn.cookinote.models.RecipeLike;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;

@Builder
public record RecipeLikeDto(UserDto1 user) implements Serializable {

    public static RecipeLikeDto fromEntity(RecipeLike recipeLike) {
        if (recipeLike == null) return null;
        return RecipeLikeDto.builder()
                .user(UserDto1.fromEntity(recipeLike.getUser()))
                .build();
    }

    public static List<RecipeLikeDto> fromEntities(List<RecipeLike> likes) {
        if (likes == null) return null;
        return likes.stream().map(RecipeLikeDto::fromEntity).toList();
    }
}