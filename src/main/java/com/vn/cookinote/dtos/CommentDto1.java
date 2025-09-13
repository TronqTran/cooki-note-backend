package com.vn.cookinote.dtos;

import com.vn.cookinote.models.Comment;
import lombok.Builder;

import java.io.Serializable;

@Builder
public record CommentDto1(Long id) implements Serializable {

    public static CommentDto1 fromEntity(Comment parent) {
        if (parent == null) return null;
        return CommentDto1.builder()
                .id(parent.getId())
                .build();
    }
}