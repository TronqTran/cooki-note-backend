package com.vn.cookinote.services;

public interface FollowService {
    void follow(Long followerId, Long targetId);

    void unfollow(Long followerId, Long targetId);

    boolean isFollowed(Long followerId, Long targetId);
}
