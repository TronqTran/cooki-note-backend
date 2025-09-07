package com.vn.cookinote.models;

import com.vn.cookinote.models.keys.RecipeIngredientKey;
import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(
        name = "recipe_ingredients",
        indexes = {
                @Index(name = "idx_recipe_ingredient_recipe", columnList = "recipe_id"),
                @Index(name = "idx_recipe_ingredient_ingredient", columnList = "ingredient_id"),
                @Index(name = "idx_recipe_ingredient_active", columnList = "recipe_id, is_deleted")
        }
)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RecipeIngredient {

    @EmbeddedId
    private RecipeIngredientKey id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("recipeId")
    @JoinColumn(name = "recipe_id", nullable = false,
            foreignKey = @ForeignKey(name = "fk_recipe_ingredient_recipe"))
    @ToString.Exclude
    private Recipe recipe;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("ingredientId")
    @JoinColumn(name = "ingredient_id", nullable = false,
            foreignKey = @ForeignKey(name = "fk_recipe_ingredient_ingredient"))
    @ToString.Exclude
    private Ingredient ingredient;

    @Column(name = "quantity", nullable = false, precision = 10, scale = 2)
    private BigDecimal quantity;

    @Column(name = "unit", length = 50)
    private String unit;

    @Column(name = "required", nullable = false)
    private Boolean required = true;

    @Column(name = "note", length = 500)
    private String note;

    @Column(name = "is_deleted", nullable = false)
    private Boolean isDeleted = false;

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at", nullable = false)
    private LocalDateTime updatedAt;

    @PrePersist
    protected void onCreate() {
        this.createdAt = LocalDateTime.now();
        this.updatedAt = LocalDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = LocalDateTime.now();
    }
}
