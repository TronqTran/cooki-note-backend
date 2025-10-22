package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Follow;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;

@Builder
public record FollowerDto(UserDto1 follower) implements Serializable {
    public static FollowerDto fromEntity(Follow follower) {
        if (follower == null) return null;
        return FollowerDto.builder().follower(UserDto1.fromEntity(follower.getFollower())).build();
    }

    public static List<FollowerDto> fromEntities(List<Follow> followers) {
        if (followers == null) return null;
        return followers.stream().map(FollowerDto::fromEntity).toList();
    }
}