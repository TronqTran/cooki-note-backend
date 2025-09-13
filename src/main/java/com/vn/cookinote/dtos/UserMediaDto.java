package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.ProfileMediaType;
import com.vn.cookinote.models.UserMedia;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;
import java.util.stream.StreamSupport;

@Builder
public record UserMediaDto(MediaDto media, ProfileMediaType type) implements Serializable {

    public static UserMediaDto fromEntity(UserMedia userMedia) {
        if (userMedia == null) return null;
        return UserMediaDto.builder()
                .media(MediaDto.fromEntity(userMedia.getMedia()))
                .type(userMedia.getType())
                .build();
    }

    public static List<UserMediaDto> fromEntities(List<UserMedia> userMedias) {
        if (userMedias == null) return null;
        return userMedias.stream()
                .map(UserMediaDto::fromEntity)
                .toList();
    }
}