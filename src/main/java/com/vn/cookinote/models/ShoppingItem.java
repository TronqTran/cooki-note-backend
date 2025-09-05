package com.vn.cookinote.models;

import com.vn.cookinote.models.keys.ShoppingItemKey;
import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;

@Entity
@Table(
        name = "shopping_items",
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_item_shopping_list_ingredient",
                        columnNames = {"shopping_list_id", "ingredient_id"}
                )
        },
        indexes = {
                @Index(name = "idx_shopping_item_shopping_list", columnList = "shopping_list_id"),
                @Index(name = "idx_shopping_item_ingredient", columnList = "ingredient_id")
        }
)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ShoppingItem {

    @EmbeddedId
    private ShoppingItemKey id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("shoppingListId")
    @JoinColumn(
            name = "shopping_list_id",
            nullable = false,
            foreignKey = @ForeignKey(name = "fk_item_shopping_list")
    )
    @ToString.Exclude
    private ShoppingList shoppingList;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("ingredientId")
    @JoinColumn(
            name = "ingredient_id",
            nullable = false,
            foreignKey = @ForeignKey(name = "fk_item_ingredient")
    )
    @ToString.Exclude
    private Ingredient ingredient;

    @Column(name = "quantity", nullable = false)
    private BigDecimal quantity;

    @Column(name = "unit", length = 50)
    private String unit;

    @Column(name = "purchased", nullable = false)
    private Boolean purchased = false;
}
