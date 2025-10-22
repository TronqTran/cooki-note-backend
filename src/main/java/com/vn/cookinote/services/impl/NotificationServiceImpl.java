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
}
