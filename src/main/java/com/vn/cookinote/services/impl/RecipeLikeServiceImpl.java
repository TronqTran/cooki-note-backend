package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.NotificationDto;
import com.vn.cookinote.enums.NotificationType;
import com.vn.cookinote.models.Notification;
import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.models.RecipeLike;
import com.vn.cookinote.models.User;
import com.vn.cookinote.models.keys.RecipeLikeKey;
import com.vn.cookinote.repositories.NotificationRepository;
import com.vn.cookinote.repositories.RecipeLikeRepository;
import com.vn.cookinote.repositories.RecipeRepository;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.services.RecipeLikeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor
public class RecipeLikeServiceImpl implements RecipeLikeService {
    private final RecipeRepository recipeRepository;
    private final UserRepository userRepository;
    private final RecipeLikeRepository recipeLikeRepository;
    private final NotificationRepository notificationRepository;
    private final SimpMessagingTemplate simpMessagingTemplate;

    @Override
    public RecipeLike likeRecipe(Long recipeId, Long userId) {
        log.info("Like recipe by id: {} and userId: {}", recipeId, userId);
        Optional<Recipe> recipe = recipeRepository.findById(recipeId);
        Optional<User> user = userRepository.findById(userId);
        RecipeLike recipeLike;
        if (recipe.isPresent() && user.isPresent()) {
            recipeLike = RecipeLike.builder()
                    .id(new RecipeLikeKey(user.get().getId(), recipe.get().getId()))
                    .user(user.get())
                    .recipe(recipe.get())
                    .build();

            if (!user.get().getId().equals(recipe.get().getUser().getId())) {
                Notification notification = Notification.builder()
                        .recipient(recipe.get().getUser())
                        .sender(user.get())
                        .type(NotificationType.LIKE)
                        .message(user.get().getUsername() + " đã thích công thức của bạn.")
                        .targetId(recipe.get().getId())
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
                User target = recipe.get().getUser();
                simpMessagingTemplate.convertAndSendToUser(
                        target.getEmail(), "/queue/notifications", notificationDto);
            }
        }
        else {
            throw new IllegalArgumentException("Recipe or user not found");
        }
        return recipeLikeRepository.save(recipeLike);
    }

    @Override
    public RecipeLike unlikeRecipe(Long recipeId, Long userId) {
        log.info("Unlike recipe by id: {} and userId: {}", recipeId, userId);
        Optional<Recipe> recipe = recipeRepository.findById(recipeId);
        Optional<User> user = userRepository.findById(userId);
        if (recipe.isPresent() && user.isPresent()) {
            RecipeLikeKey key = new RecipeLikeKey(recipe.get().getId(), user.get().getId());
            return recipeLikeRepository.findById(key)
                    .map(recipeLike -> {
                        recipeLikeRepository.deleteById(key);
                        return recipeLike;
                    })
                    .orElse(null);
        }
        return null;
    }

    @Override
    public boolean isRecipeLiked(Long recipeId, Long userId) {
        if (recipeId == null || userId == null) return false;
        Optional<User> user = userRepository.findById(userId);
        Optional<Recipe> recipe = recipeRepository.findById(recipeId);
        return user.isPresent() && recipe.isPresent() && recipeLikeRepository.findById(new RecipeLikeKey(recipe.get().getId(), user.get().getId())).isPresent();
    }

    @Override
    public List<User> getRecipeLikeUser(Long recipeId) {
        Optional<Recipe> recipe = recipeRepository.findById(recipeId);
        if (recipe.isPresent()) {
            Optional<RecipeLike> recipeLike = recipeLikeRepository.findByRecipe(recipe.get());
            return Collections.singletonList(recipeLike.map(RecipeLike::getUser).orElse(null));
        }
        return null;
    }
}
