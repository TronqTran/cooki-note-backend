package com.vn.cookinote.models.keys;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.*;

import java.io.Serializable;
@Embeddable
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class StepMediaKey implements Serializable {
    @Column(name = "step_id", nullable = false)
    private Long stepId;

    @Column(name = "media_id", nullable = false)
    private Long mediaId;
}
