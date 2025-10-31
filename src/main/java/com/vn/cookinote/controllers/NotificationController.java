package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.NotificationDto;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.Notification;
import com.vn.cookinote.services.NotificationService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/notification")
@RequiredArgsConstructor
public class NotificationController {

    private final NotificationService notificationService;

    @GetMapping("/me")
    public ResponseEntity<ApiResponse<Object>> getNotification(@AuthenticationPrincipal Jwt jwt,
                                                               @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
                                                               Pageable pageable) {
        String email = jwt.getSubject();
        Page<Notification> notification = notificationService.findMyNotifications(email, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage(), NotificationDto.fromEntities(notification.getContent()));
    }

    @PatchMapping("/mark-as-read/{id}")
    public ResponseEntity<ApiResponse<Object>> markAsRead(@PathVariable Long id) {
        notificationService.markAsRead(id);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Thông báo đã đươc đọc");
    }

    @PatchMapping("/mark-all-as-read")
    public ResponseEntity<ApiResponse<Object>> markAllAsRead(@AuthenticationPrincipal Jwt jwt,
                                                             @PageableDefault(size = 20, sort = {"createdAt"}, direction = Sort.Direction.DESC)
                                                             Pageable pageable) {
        String email = jwt.getSubject();
        notificationService.markAllAsRead(email);
        Page<Notification> notification = notificationService.findMyNotifications(email, pageable);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Tất cả thông báo đã được đọc", NotificationDto.fromEntities(notification.getContent()));
    }

}
