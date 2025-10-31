package com.vn.cookinote.services;

import com.vn.cookinote.models.Notification;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface NotificationService {
    Page<Notification> findMyNotifications(Long usersId, Pageable pageable);

    void markAsRead(Long id);

    void markAllAsRead(Long usersId);
}
