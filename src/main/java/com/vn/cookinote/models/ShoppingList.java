package com.vn.cookinote.models;

import com.vn.cookinote.enums.ShoppingListStatus;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(
        name = "shopping_lists",
        indexes = {
                @Index(name = "idx_shopping_list_user", columnList = "user_id"),
                @Index(name = "idx_shopping_list_date", columnList = "planned_date"),
                @Index(name = "idx_shopping_list_user_status", columnList = "user_id, status"),
        }
)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ShoppingList {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "shopping_list_id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(
            name = "user_id",
            nullable = false,
            foreignKey = @ForeignKey(name = "fk_shopping_list_user")
    )
    @ToString.Exclude
    private User user;

    @Column(name = "title", length = 200, nullable = false)
    private String title;

    @Column(name = "planned_date")
    private LocalDate plannedDate;

    @Column(name = "note", length = 500)
    private String note;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false, length = 20)
    private ShoppingListStatus status = ShoppingListStatus.ACTIVE;

    @OneToMany(mappedBy = "shoppingList", cascade = CascadeType.ALL, orphanRemoval = true)
    @ToString.Exclude
    private List<ShoppingItem> items = new ArrayList<>();

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
