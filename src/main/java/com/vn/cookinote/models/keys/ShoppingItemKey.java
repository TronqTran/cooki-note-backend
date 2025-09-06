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
public class ShoppingItemKey implements Serializable {
    @Column(name = "shopping_list_id", nullable = false)
    private Long shoppingListId;

    @Column(name = "ingredient_id", nullable = false)
    private Long ingredientId;
}
