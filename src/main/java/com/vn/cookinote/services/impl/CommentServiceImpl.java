package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.CommentDto;
import com.vn.cookinote.models.Comment;
import com.vn.cookinote.models.Notification;
import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.models.User;
import com.vn.cookinote.repositories.CommentRepository;
import com.vn.cookinote.repositories.NotificationRepository;
import com.vn.cookinote.repositories.RecipeRepository;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.services.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CommentServiceImpl implements CommentService {
    private final CommentRepository commentRepository;
    private final RecipeRepository recipeRepository;
    private final UserRepository userRepository;
    private final NotificationRepository notificationRepository;


    @Override
    public Comment addCommentToRecipe(Long id, Long userId, CommentDto commentDto) {
        Optional<Recipe> recipe = recipeRepository.findById(id);
        Optional<User> user = userRepository.findById(userId);
        Optional<Comment> commentParent = commentDto.parent() != null ? commentRepository.findById(commentDto.parent().id()) : Optional.empty();

        if (recipe.isPresent() && user.isPresent()) {
            Comment comment = new Comment();
            comment.setContent(commentDto.content());
            comment.setRecipe(recipe.get());
            comment.setUser(user.get());
            comment.setDepth(commentParent.map(parent -> parent.getDepth() + 1).orElse(0));
            commentParent.ifPresent(comment::setParent);

            if (!Objects.equals(user.get().getId(), recipe.get().getUser().getId())) {
                // Tạo thông báo cho chủ bài viết
                Notification notification = Notification.builder()
                        .recipient(recipe.get().getUser())
                        .sender(user.get())
                        .type(com.vn.cookinote.enums.NotificationType.COMMENT)
                        .message(user.get().getUsername() + " đã bình luận về bài viết của bạn.")
                        .targetId(recipe.get().getId())
                        .isRead(false)
                        .build();

                notificationRepository.save(notification);
            }

            return commentRepository.save(comment);
        }
        return null;
    }

@Override
    public boolean deleteComment(Long id, Long userid) {
        User user = userRepository.findById(userid).orElse(null);
        Comment comment = commentRepository.findById(id).orElse(null);
        assert user != null;
        assert comment != null;
        if (user.equals(comment.getUser())) {
            comment.setIsDeleted(true);
            commentRepository.save(comment);

            // Update child comments
            List<Comment> childComments = commentRepository.findByParentId((comment.getId()));
            for (Comment child : childComments) {
                child.setParent(null);
                child.setDepth(child.getDepth() - 1);
                commentRepository.save(child);
            }

            return true;
        }
        return false;
    }
}
