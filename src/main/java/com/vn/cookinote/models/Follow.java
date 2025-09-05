package com.vn.cookinote.models;

import com.vn.cookinote.models.keys.FollowKey;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "follows",
        uniqueConstraints = @UniqueConstraint(name = "uk_follower_following",
                columnNames = {"follower_id", "following_id"}),
        indexes = {
        @Index(name = "idx_follower_id", columnList = "follower_id"),
        @Index(name = "idx_following_id", columnList = "following_id")
        }
)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Follow {
    @EmbeddedId
    private FollowKey id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("followerId")
    @JoinColumn(name = "follower_id", foreignKey = @ForeignKey(name = "fk_follower_id"))
    private User follower;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("followingId")
    @JoinColumn(name = "following_id", foreignKey = @ForeignKey(name = "fk_following_id"))
    private User following;

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @PrePersist
    protected void onCreate() {
        this.createdAt = LocalDateTime.now();
    }
}
