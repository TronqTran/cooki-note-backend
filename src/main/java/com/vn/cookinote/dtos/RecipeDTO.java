package com.vn.cookinote.dtos;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.vn.cookinote.enums.Difficulty;
import lombok.Builder;
import lombok.Data;

import java.util.List;
@JsonInclude(JsonInclude.Include.NON_NULL)
@Data
@Builder
public class RecipeDTO
{
    private String title;
    private String description;
    private String imageUrl;
    private String imagePublicId;
    private Integer cookTime;
    private Integer servings;
    private Difficulty difficulty;
    private Boolean isPublic;
    private Long categoryId;
    private List<StepDTO> steps;
    private List<RecipeIngredientDTO> ingredients;
}
