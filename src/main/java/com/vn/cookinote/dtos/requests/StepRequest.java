package com.vn.cookinote.dtos.requests;

import java.util.List;

public record StepRequest(
        Integer stepOrder,
        String description,
        Integer estimatedTimeMinutes,
        List<String>imageUrls
) {
}
