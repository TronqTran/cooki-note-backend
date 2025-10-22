package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.NotificationType;
import com.vn.cookinote.models.Notification;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.StreamSupport;

@Builder
public record NotificationDto(Long id, NotificationType type, String message, Long targetId, Boolean isRead,
                              LocalDateTime createdAt) implements Serializable {

    public static NotificationDto fromEntity(Notification notification) {
        if (notification == null) return null;
        return NotificationDto.builder()
                .id(notification.getId())
                .type(notification.getType())
                .message(notification.getMessage())
                .targetId(notification.getTargetId())
                .isRead(notification.getIsRead())
                .createdAt(notification.getCreatedAt())
                .build();
    }

    public static Iterable<NotificationDto> fromEntities(List<Notification> notifications) {
        if (notifications == null) return null;
        return notifications.stream()
                .map(NotificationDto::fromEntity)
                .toList();
    }
}