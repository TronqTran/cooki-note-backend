package com.vn.cookinote.repositories;

import com.vn.cookinote.models.MealPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MealPlanRepository extends JpaRepository<MealPlan, Long> {
    List<MealPlan> findAllByUserId(Long userId);

    void deleteAllByUserId(Long userId);
}
