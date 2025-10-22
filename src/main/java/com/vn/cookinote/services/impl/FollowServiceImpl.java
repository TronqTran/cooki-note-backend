package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.FollowNotification;
import com.vn.cookinote.dtos.NotificationDto;
import com.vn.cookinote.enums.NotificationType;
import com.vn.cookinote.models.Follow;
import com.vn.cookinote.models.Notification;
import com.vn.cookinote.models.User;
import com.vn.cookinote.models.keys.FollowKey;
import com.vn.cookinote.repositories.FollowRepository;
import com.vn.cookinote.repositories.NotificationRepository;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.services.FollowService;
import lombok.RequiredArgsConstructor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;

@Service
@RequiredArgsConstructor
public class FollowServiceImpl implements FollowService {
    private final FollowRepository followRepository;
    private final UserRepository userRepository;
    private final SimpMessagingTemplate messagingTemplate;
    private final NotificationRepository notificationRepository;

    @Override
    @Transactional
    public void follow(Long followerId, Long targetId) {
        User follower = userRepository.getReferenceById(followerId);
        User target   = userRepository.getReferenceById(targetId);

        Follow follow = new Follow();
        follow.setId(new FollowKey(followerId, targetId));
        follow.setFollower(follower);
        follow.setFollowing(target);
        followRepository.save(follow);

        Notification notification = Notification.builder()
                .recipient(target)
                .sender(follower)
                .type(NotificationType.FOLLOW)
                .message(follower.getUsername() + " đã theo dõi bạn.")
                .targetId(followerId)
                .isRead(false)
                .build();

        notificationRepository.save(notification);

        // Bắn thông báo realtime tới người bị follow
        NotificationDto notificationDto = NotificationDto.builder()
                .id(notification.getId())
                .type(notification.getType())
                .message(notification.getMessage())
                .targetId(notification.getTargetId())
                .isRead(notification.getIsRead())
                .createdAt(notification.getCreatedAt())
                .build();
        // gửi tới đích riêng của user (user destination)
        messagingTemplate.convertAndSendToUser(
                target.getEmail(), "/queue/notifications", notificationDto);

    }

    @Override
    @Transactional
    public void unfollow(Long followerId, Long targetId) {
        followRepository.deleteByFollowerIdAndFollowingId(followerId, targetId);
    }

    @Override
    public boolean isFollowed(Long followerId, Long targetId) {
        return followRepository.existsByFollowerIdAndFollowingId(followerId, targetId);
    }
}
