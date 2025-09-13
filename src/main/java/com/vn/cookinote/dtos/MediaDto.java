package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.MediaType;
import com.vn.cookinote.models.Media;
import lombok.Builder;

import java.io.Serializable;
import java.util.stream.StreamSupport;

@Builder
public record MediaDto(Long id, String url, String publicId, MediaType type) implements Serializable {

    public static MediaDto fromEntity(Media media) {
        if (media == null) return null;
        return MediaDto.builder()
                .id(media.getId())
                .url(media.getUrl())
                .publicId(media.getPublicId())
                .type(media.getType())
                .build();
    }

    public static Iterable<MediaDto> fromEntities(Iterable<Media> media) {
        if (media == null) return null;
        return StreamSupport.stream(media.spliterator(), false)
                .map(MediaDto::fromEntity)
                .toList();
    }
}