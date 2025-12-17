package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Step;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;

@Builder
public record StepDto(Long id, Integer stepOrder,
                      @NotBlank(message = "Mô tả bước không được để trống")
                      @Size(min = 1, max = 1000, message = "Mô tả bước phải từ 1–1000 ký tự")
                      String description,
                      List<StepMediaDto> medias) implements Serializable {

    public static StepDto fromEntity(Step step) {
        if (step == null) return null;
        return StepDto.builder()
                .id(step.getId())
                .stepOrder(step.getStepOrder())
                .description(step.getDescription())
                .medias(StepMediaDto.fromEntities(step.getMedias()))
                .build();
    }

    public static List<StepDto> fromEntities(List<Step> steps) {
        if (steps == null) return null;
        return steps.stream()
                .map(StepDto::fromEntity)
                .toList();
    }
}