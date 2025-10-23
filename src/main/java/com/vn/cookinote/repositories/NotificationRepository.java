package com.vn.cookinote.repositories;

import com.vn.cookinote.models.Notification;
import com.vn.cookinote.models.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long> {
    Page<Notification> findByRecipient(User user, Pageable pageable);

    List<Notification> findByRecipient(User recipient);
}
