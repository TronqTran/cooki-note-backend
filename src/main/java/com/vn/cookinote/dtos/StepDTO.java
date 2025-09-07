package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Step;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;

@Builder
public record StepDto(Long id, Integer stepOrder, String description, Integer estimatedTimeMinutes,
                      List<StepMediaDto> medias) implements Serializable {

    public static StepDto fromEntity(Step step) {
        return StepDto.builder()
                .id(step.getId())
                .stepOrder(step.getStepOrder())
                .description(step.getDescription())
                .estimatedTimeMinutes(step.getEstimatedTimeMinutes())
                .medias(StepMediaDto.fromEntities(step.getMedias()))
                .build();
    }

    public static List<StepDto> fromEntities(List<Step> steps) {
        return steps.stream()
                .map(StepDto::fromEntity)
                .toList();
    }
}