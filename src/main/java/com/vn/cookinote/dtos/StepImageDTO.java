package com.vn.cookinote.dtos;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Data;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Data
@Builder
public class StepImageDTO {
    private String imageUrl;
    private String imagePublicId;
    private String caption;
    private Integer displayOrder;
    private Boolean isDeleted;
}
