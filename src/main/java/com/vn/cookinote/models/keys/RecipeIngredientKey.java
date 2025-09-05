package com.vn.cookinote.models.keys;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.*;

import java.io.Serializable;
@Embeddable
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class RecipeIngredientKey implements Serializable {
    @Column(name = "recipe_id", nullable = false)
    private Long recipeId;
    @Column(name = "ingredient_id", nullable = false)
    private Long ingredientId;
}
