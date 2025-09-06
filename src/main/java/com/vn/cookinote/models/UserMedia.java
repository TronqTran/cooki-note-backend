package com.vn.cookinote.models;

import com.vn.cookinote.enums.ProfileMediaType;
import com.vn.cookinote.models.keys.UserMediaKey;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "user_media")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserMedia {

    @EmbeddedId
    private UserMediaKey id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("userId")
    @JoinColumn(name = "user_id", nullable = false,
            foreignKey = @ForeignKey(name = "fk_user_media_user"))
    private User user;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("mediaId")
    @JoinColumn(name = "media_id", nullable = false,
            foreignKey = @ForeignKey(name = "fk_user_media_media"))
    private Media media;

    @Enumerated(EnumType.STRING)
    @Column(name = "type", length = 50, nullable = false)
    private ProfileMediaType type = ProfileMediaType.AVATAR;

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

