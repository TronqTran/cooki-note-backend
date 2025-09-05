package com.vn.cookinote.models;

import com.vn.cookinote.enums.MealType;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(
        name = "meal_plans",
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_meal_plan_user_date_meal_recipe",
                        columnNames = {"user_id", "meal_date", "meal_type", "recipe_id"}
                )
        },
        indexes = {
                @Index(name = "idx_meal_plan_user_date", columnList = "user_id, meal_date"),
                @Index(name = "idx_meal_plan_recipe", columnList = "recipe_id"),
                @Index(name = "idx_meal_plan_user_active", columnList = "user_id, is_deleted")
        }
)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MealPlan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "meal_plan_id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id", nullable = false,
            foreignKey = @ForeignKey(name = "fk_meal_plan_user"))
    @ToString.Exclude
    private User user;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "recipe_id", nullable = false,
            foreignKey = @ForeignKey(name = "fk_meal_plan_recipe"))
    @ToString.Exclude
    private Recipe recipe;

    @Column(name = "meal_date", nullable = false)
    private LocalDate mealDate;

    @Enumerated(EnumType.STRING)
    @Column(name = "meal_type", nullable = false, length = 20)
    private MealType mealType;

    @Column(name = "note", columnDefinition = "TEXT")
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
