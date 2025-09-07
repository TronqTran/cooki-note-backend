package com.vn.cookinote.models;

import com.vn.cookinote.models.keys.StepMediaKey;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "step_media")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class StepMedia {

    @EmbeddedId
    private StepMediaKey id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("stepId")
    @JoinColumn(name = "step_id", nullable = false,
            foreignKey = @ForeignKey(name = "fk_step_media_step"))
    private Step step;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("mediaId")
    @JoinColumn(name = "media_id", nullable = false,
            foreignKey = @ForeignKey(name = "fk_step_media_media"))
    private Media media;

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
