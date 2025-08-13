package com.vn.cookinote.models;

import com.vn.cookinote.models.keys.FollowKey;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "follows",
        uniqueConstraints = @UniqueConstraint(name = "uk_follower_following",
                columnNames = {"follower_id", "following_id"}))
@Getter
@Setter
@NoArgsConstructor
@Builder
@AllArgsConstructor
public class Follow {
    @EmbeddedId
    private FollowKey id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("followerId")
    @JoinColumn(name = "follower_id")
    private User follower;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("followingId")
    @JoinColumn(name = "following_id")
    private User following;
}
