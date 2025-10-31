package com.vn.cookinote.repositories;

import com.vn.cookinote.models.ShoppingItem;
import com.vn.cookinote.models.keys.ShoppingItemKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ShoppingItemRepository extends JpaRepository<ShoppingItem, ShoppingItemKey> {
}
