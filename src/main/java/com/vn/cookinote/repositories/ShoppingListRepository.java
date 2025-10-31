package com.vn.cookinote.repositories;

import com.vn.cookinote.models.ShoppingList;
import com.vn.cookinote.models.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;

@Repository
public interface ShoppingListRepository extends JpaRepository<ShoppingList, Long> {
    Page<ShoppingList> findByIsDeletedAndUser(Boolean isDeleted, User user, Pageable pageable);

    Page<ShoppingList> findByIsDeletedAndUserAndPlannedDate(Boolean isDeleted, User user, LocalDate plannedDate, Pageable pageable);
}
