package com.vn.cookinote.services;

import com.vn.cookinote.dtos.ShoppingItemDto1;
import com.vn.cookinote.models.ShoppingItem;

public interface ShoppingItemService {
    ShoppingItem updateShoppingItem(ShoppingItemDto1 shoppingItemDto);
}
