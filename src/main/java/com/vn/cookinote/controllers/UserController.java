package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.requests.ChangePasswordRequest;
import com.vn.cookinote.dtos.requests.ResetPasswordRequest;
import com.vn.cookinote.dtos.requests.UpdateProfileRequest;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

@RestController
@RequestMapping("/api/v1/users")
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @PatchMapping("/change-password")
    public ResponseEntity<ApiResponse<Object>> changePassword(
            @RequestBody ChangePasswordRequest request,
            Principal connectedUser) {

        return ResponseEntity.ok(userService.changePassword(request, connectedUser));
    }

    @PatchMapping("/reset-password")
    public ResponseEntity<ApiResponse<Object>> resetPassword(
            @RequestBody ResetPasswordRequest request) {
        userService.resetPassword(request);

        return ResponseEntity.ok(userService.resetPassword(request));
    }

    @PatchMapping("/upload-avatar")
    public ResponseEntity<ApiResponse<Object>> uploadAvatar(@RequestParam("file") MultipartFile file, @AuthenticationPrincipal Jwt jwt) throws IOException {
            ApiResponse<Object> response = userService.uploadAvatar(file, jwt);

            return ResponseEntity.ok(response);
    }

    @PatchMapping("/update-profile")
    public ResponseEntity<ApiResponse<Object>> updateProfile(@RequestBody UpdateProfileRequest request, @AuthenticationPrincipal Jwt jwt) {
        return ResponseEntity.ok(userService.updateProfile(request, jwt));
    }

    @GetMapping("/information")
    public ResponseEntity<ApiResponse<Object>> getInformation(@AuthenticationPrincipal Jwt jwt) {
        return ResponseEntity.ok(userService.getUserInfo(jwt));
    }
}
