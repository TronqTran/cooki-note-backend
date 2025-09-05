package com.vn.cookinote.dtos;

import java.time.Instant;

public record FollowNotification(Long followerId, String username, String avatarUrl, Instant at) {
}
