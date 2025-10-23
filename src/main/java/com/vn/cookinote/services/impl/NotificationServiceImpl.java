package com.vn.cookinote.services.impl;

import com.vn.cookinote.models.Notification;
import com.vn.cookinote.models.User;
import com.vn.cookinote.repositories.NotificationRepository;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.services.NotificationService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class NotificationServiceImpl implements NotificationService {
    private final UserRepository userRepository;
    private final NotificationRepository notificationRepository;

    @Override
    public Page<Notification> findMyNotifications(String email, Pageable pageable) {
        log.info("Finding my notifications by email: {}", email);
        Pageable sortedByCreatedAt = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                Sort.by(Sort.Direction.DESC, "createdAt")
        );
        User user = userRepository.findByEmail(email).orElse(null);
        assert user != null;
        return notificationRepository.findByRecipient(user, sortedByCreatedAt);
    }

    @Override
    public void markAsRead(Long id) {
        log.info("Marking notification with id: {} as read", id);
        Optional<Notification> notification = notificationRepository.findById(id);
        if (notification.isPresent()) {
            notification.get().setIsRead(true);
            notificationRepository.save(notification.get());
        }
    }

    @Override
    public void markAllAsRead(String email) {
        User user = userRepository.findByEmail(email).orElse(null);
        List<Notification> byRecipient = notificationRepository.findByRecipient(user);
        for (Notification notification : byRecipient) {
            notification.setIsRead(true);
            notificationRepository.save(notification);
        }
    }
}
