package com.vn.cookinote.models;

import com.vn.cookinote.enums.ProfileMediaType;
import com.vn.cookinote.models.keys.RecipeMediaKey;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(
        name = "recipe_media",
        indexes = {
                @Index(name = "idx_recipe_media_recipe_id", columnList = "recipe_id"),
                @Index(name = "idx_recipe_media_media_id", columnList = "media_id")
        })
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RecipeMedia {

    @EmbeddedId
    private RecipeMediaKey id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("recipeId")
    @JoinColumn(name = "recipe_id", nullable = false,
            foreignKey = @ForeignKey(name = "fk_recipe_media_recipe"))
    @ToString.Exclude
    private Recipe recipe;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("mediaId")
    @JoinColumn(name = "media_id", nullable = false,
            foreignKey = @ForeignKey(name = "fk_recipe_media_media"))
    @ToString.Exclude
    private Media media;

    @Enumerated(EnumType.STRING)
    @Column(name = "type", length = 50, nullable = false)
    private ProfileMediaType type = ProfileMediaType.AVATAR;

    @Column(name = "display_order")
    private Integer displayOrder;

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
