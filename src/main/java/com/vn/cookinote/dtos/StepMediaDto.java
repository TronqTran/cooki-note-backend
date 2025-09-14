package com.vn.cookinote.dtos;

import com.vn.cookinote.models.StepMedia;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Builder
public record StepMediaDto(MediaDto media) implements Serializable {

    public static StepMediaDto fromEntity(StepMedia stepMedia) {
        if (stepMedia == null) return null;
        return StepMediaDto.builder()
                .media(MediaDto.fromEntity(stepMedia.getMedia()))
                .build();
    }

    public static List<StepMediaDto> fromEntities(List<StepMedia> medias) {
        if (medias == null) return null;
        return medias.stream()
                .map(StepMediaDto::fromEntity)
                .toList();
    }
}