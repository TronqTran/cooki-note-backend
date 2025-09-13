package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Follow;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Builder
public record FollowDto(LocalDateTime createdAt) implements Serializable {
    public static List<FollowDto> fromEntities(List<Follow> following) {
        if (following == null) return null;
        return following.stream()
                .map(follow -> FollowDto.builder()
                        .createdAt(follow.getCreatedAt())
                        .build())
                .toList();
    }
}