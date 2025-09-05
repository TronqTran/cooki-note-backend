package com.vn.cookinote.models;

import com.vn.cookinote.models.keys.RecipeLikeKey;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(
        name = "recipe_likes",
        uniqueConstraints = {
                @UniqueConstraint(name = "uk_user_recipe_like", columnNames = {"user_id", "recipe_id"})
        },
        indexes = {
                @Index(name = "idx_like_recipe", columnList = "recipe_id"),
                @Index(name = "idx_like_user", columnList = "user_id"),
                @Index(name = "idx_like_recipe_created", columnList = "recipe_id, created_at")
        }
)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RecipeLike {

    @EmbeddedId
    private RecipeLikeKey id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("userId")
    @JoinColumn(name = "user_id", nullable = false, foreignKey = @ForeignKey(name = "fk_like_user"))
    @ToString.Exclude
    private User user;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("recipeId")
    @JoinColumn(name = "recipe_id", nullable = false, foreignKey = @ForeignKey(name = "fk_like_recipe"))
    @ToString.Exclude
    private Recipe recipe;

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
