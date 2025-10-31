package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.RecipeLikeDto;
import com.vn.cookinote.dtos.UserDto1;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.RecipeLike;
import com.vn.cookinote.models.User;
import com.vn.cookinote.services.RecipeLikeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/like")
@RequiredArgsConstructor
public class RecipeLikeController {

    private final RecipeLikeService recipeLikeService;

    @PostMapping("/recipe/{id}")
    public ResponseEntity<ApiResponse<Object>> likeRecipe(@PathVariable Long id, @AuthenticationPrincipal Jwt jwt) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));
        if (recipeLikeService.isRecipeLiked(id, userid))
            return ApiResponse.toResponseEntity(ApiStatus.BAD_REQUEST, "Bạn đã thích công thức này rồi", null);
        RecipeLike recipeLike = recipeLikeService.likeRecipe(id, userid);
        return ApiResponse.toResponseEntity(ApiStatus.CREATED, "Thích công thức thành công", RecipeLikeDto.fromEntity(recipeLike));
    }

    @DeleteMapping("/recipe/{id}")
    public ResponseEntity<ApiResponse<Object>> unlikeRecipe(@PathVariable Long id, @AuthenticationPrincipal Jwt jwt) {
        Long userid = Long.valueOf(jwt.getClaimAsString("userId"));
        if (!recipeLikeService.isRecipeLiked(id, userid))
            return ApiResponse.toResponseEntity(ApiStatus.BAD_REQUEST, "Bạn chưa thích công thức này rồi", null);
        RecipeLike recipeLike = recipeLikeService.unlikeRecipe(id, userid);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Bỏ thích công thức thành công", RecipeLikeDto.fromEntity(recipeLike));
    }

    @GetMapping("/recipe/{id}")
    public ResponseEntity<ApiResponse<Object>> isRecipeLiked(@PathVariable Long id) {
        List<User> recipeLikeUser = recipeLikeService.getRecipeLikeUser(id);
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Lấy trạng thái thích công thức thành công", UserDto1.fromEntities(recipeLikeUser));
    }
}
