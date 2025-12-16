package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Step;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;

@Builder
public record StepDto1(Integer stepOrder, String description) implements Serializable {

    public static StepDto1 fromEntity(Step step) {
        if (step == null) return null;
        return StepDto1.builder()
                .stepOrder(step.getStepOrder())
                .description(step.getDescription())
                .build();
    }

    public static List<StepDto1> fromEntities(List<Step> steps) {
        if (steps == null) return null;
        return steps.stream()
                .map(StepDto1::fromEntity)
                .toList();
    }
}