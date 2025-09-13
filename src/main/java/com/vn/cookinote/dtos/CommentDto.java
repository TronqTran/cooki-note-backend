package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Comment;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Builder
public record CommentDto(Long id, UserDto1 user, String content, CommentDto1 parent, Integer depth,
                         LocalDateTime createdAt) implements Serializable {

    public static CommentDto fromEntity(Comment entity) {
        if (entity == null) return null;
        return CommentDto.builder()
                .id(entity.getId())
                .user(UserDto1.fromEntity(entity.getUser()))
                .content(entity.getContent())
                .depth(entity.getDepth())
                .parent(CommentDto1.fromEntity(entity.getParent()))
                .createdAt(entity.getCreatedAt())
                .build(
        );
    }

    public static List<CommentDto> fromEntities(List<Comment> entities) {
        if (entities == null) return null;
        return entities.stream().map(CommentDto::fromEntity).toList();
    }
}