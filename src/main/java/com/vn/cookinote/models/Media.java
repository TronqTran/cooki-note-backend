package com.vn.cookinote.models;

import com.vn.cookinote.enums.MediaType;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(
        name = "media",
        uniqueConstraints = {
                @UniqueConstraint(name = "uk_media_public_id", columnNames = {"public_id"})
        },
        indexes = {
                @Index(name = "idx_media_created_at", columnList = "created_at"),
                @Index(name = "idx_media_public_id", columnList = "public_id")
        }
)
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Media {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "media_id")
    private Long id;

    @Column(name = "url", nullable = false, length = 500)
    private String url;

    @Column(name = "public_id", unique = true, nullable = false)
    private String publicId;

    @Enumerated(EnumType.STRING)
    @Column(name = "type", nullable = false, length = 20)
    private MediaType type;

    @Column(name = "caption")
    private String caption;

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at", nullable = false)
    private LocalDateTime updatedAt;

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
        updatedAt = LocalDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        updatedAt = LocalDateTime.now();
    }
}