package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.ShoppingItemDto1;
import com.vn.cookinote.models.ShoppingItem;
import com.vn.cookinote.models.keys.ShoppingItemKey;
import com.vn.cookinote.repositories.ShoppingItemRepository;
import com.vn.cookinote.services.ShoppingItemService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class ShoppingItemServiceImpl implements ShoppingItemService {
    private final ShoppingItemRepository shoppingItemRepository;

    @Override
    public ShoppingItem updateShoppingItem(ShoppingItemDto1 shoppingItemDto) {
        ShoppingItemKey itemKey = new ShoppingItemKey(shoppingItemDto.shoppingList().id(), shoppingItemDto.ingredient().id());
        log.info("Updating shopping item by id: {}", itemKey);

        Optional<ShoppingItem> item = shoppingItemRepository.findById(itemKey);
        if (item.isPresent()) {
            ShoppingItem shoppingItem = item.get();
            shoppingItem.setQuantity(shoppingItemDto.quantity());
            shoppingItem.setUnit(shoppingItemDto.unit());
            shoppingItem.setPurchased(shoppingItemDto.purchased());
            shoppingItemRepository.save(shoppingItem);
            return shoppingItem;
        }
        return null;
    }
}
