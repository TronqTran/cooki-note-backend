package com.vn.cookinote.services;

import com.vn.cookinote.dtos.CommentDto;
import com.vn.cookinote.models.Comment;

public interface CommentService {
    Comment addCommentToRecipe(Long id, Long userId, CommentDto commentDto);

    boolean deleteComment(Long id, Long userId);
}
