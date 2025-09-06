package com.vn.cookinote.dtos;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Data
@Builder
public class RecipeIngredientDTO {
    private String ingredientName;
    private String ingredientDescription;
    private BigDecimal quantity;
    private String unit;
}
