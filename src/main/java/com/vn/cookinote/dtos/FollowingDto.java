package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Follow;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;

@Builder
public record FollowingDto(UserDto1 following) implements Serializable {
    public static FollowingDto fromEntity(Follow following) {
        if (following == null) return null;
        return FollowingDto.builder()
                .following(UserDto1.fromEntity(following.getFollowing()))
                .build();
    }

    public static List<FollowingDto> fromEntities(List<Follow> following) {
        if (following == null) return null;
        return following.stream().map(FollowingDto::fromEntity).toList();
    }
}