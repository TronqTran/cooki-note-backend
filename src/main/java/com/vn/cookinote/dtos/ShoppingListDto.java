package com.vn.cookinote.dtos;

import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDate;

@Builder
public record ShoppingListDto(Long recipeId, LocalDate plannedDate) implements Serializable {
}