package com.vn.cookinote.repositories;

import com.vn.cookinote.models.Follow;
import com.vn.cookinote.models.keys.FollowKey;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FollowRepository extends JpaRepository<Follow, FollowKey> {
    boolean existsByFollowerIdAndFollowingId(Long followerId, Long followingId);
    // Counts the number of users a given user is following.
    long countByFollowingId(Long userId);
    // Counts the number of followers for a given user.
    long countByFollowerId(Long userId);

    @Query("select f.following.id from Follow f where f.follower.id = :userId")
    Page<Long> findFollowingIds(@Param("userId") Long userId, Pageable pageable);

    @Query("select f.follower.id from Follow f where f.following.id = :userId")
    Page<Long> findFollowerIds(@Param("userId") Long userId, Pageable pageable);

    void deleteByFollowerIdAndFollowingId(Long followerId, Long followingId);
}
