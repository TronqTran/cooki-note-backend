package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.User;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.services.FollowService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

@RestController
@RequestMapping("/api/v1/follow")
@RequiredArgsConstructor
public class FollowController {
    private final FollowService followService;
    private final UserRepository userRepository;

    @PostMapping("/{targetId}")
    public ResponseEntity<ApiResponse<Object>> follow(@PathVariable Long targetId, @AuthenticationPrincipal Jwt auth) {

        String email = auth.getSubject();
        User me = userRepository.findByEmail(email)
                .orElseThrow(() -> new IllegalArgumentException("User not found"));

        if (Objects.equals(me.getId(), targetId))
            return ApiResponse.toResponseEntity(ApiStatus.BAD_REQUEST, "Bạn không thể theo dõi chính mình");

        if (followService.isFollowed(me.getId(), targetId))
            return ApiResponse.toResponseEntity(ApiStatus.CONFLICT, "Bạn đã theo dõi người dùng này");

        followService.follow(me.getId(), targetId);
        return ApiResponse.toResponseEntity(ApiStatus.OK,"Theo dõi thành công");
    }

    @DeleteMapping("/{targetId}")
    public ResponseEntity<ApiResponse<Object>> unfollow(@PathVariable Long targetId, @AuthenticationPrincipal Jwt auth) {
        String email = auth.getSubject();
        User me = userRepository.findByEmail(email)
                .orElseThrow(() -> new IllegalArgumentException("User not found"));

        followService.unfollow(me.getId(), targetId);

        return ApiResponse.toResponseEntity(ApiStatus.OK, "Hủy theo dõi thành công");
    }
}
