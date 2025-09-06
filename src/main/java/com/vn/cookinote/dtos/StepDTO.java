package com.vn.cookinote.dtos;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Data;

import java.util.List;
@JsonInclude(JsonInclude.Include.NON_NULL)
@Data
@Builder
public class StepDTO {
    private Integer stepOrder;
    private String description;
    private Integer estimatedTimeMinutes;
    private List<String> imageUrls;
}
