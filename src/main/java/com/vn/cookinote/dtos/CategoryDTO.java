package com.vn.cookinote.dtos;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Data;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Data
@Builder
public class CategoryDTO {
    private String name;
    private String description;
    private String iconUrl;
}
