package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.CommentDto;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.Comment;
import com.vn.cookinote.services.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/comment")
@RequiredArgsConstructor
public class CommentController {

    private final CommentService commentService;

    @PostMapping("/recipe/{id}")
    public ResponseEntity<ApiResponse<CommentDto>> addCommentToRecipe(@PathVariable Long id, @RequestBody CommentDto commentDto, @AuthenticationPrincipal Jwt jwt) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));
        Comment comment = commentService.addCommentToRecipe(id, userid, commentDto);
        return ApiResponse.toResponseEntity(ApiStatus.CREATED, ApiStatus.CREATED.getMessage(), CommentDto.fromEntity(comment));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<ApiResponse<Object>> deleteComment(@PathVariable Long id, @AuthenticationPrincipal Jwt jwt) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));
        boolean isDeleted = commentService.deleteComment(id, userid);
        if (isDeleted) {
            return ApiResponse.toResponseEntity(ApiStatus.OK, ApiStatus.OK.getMessage());
        }
        return ApiResponse.toResponseEntity(ApiStatus.BAD_REQUEST, ApiStatus.BAD_REQUEST.getMessage());
    }
}
