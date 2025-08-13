package com.vn.cookinote.services;

import com.vn.cookinote.dtos.requests.ChangePasswordRequest;
import com.vn.cookinote.dtos.requests.ResetPasswordRequest;
import com.vn.cookinote.dtos.requests.UpdateProfileRequest;
import com.vn.cookinote.dtos.responses.ApiResponse;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

public interface UserService {
    ApiResponse<Object> changePassword(ChangePasswordRequest request, Principal connectedUser);
    ApiResponse<Object> resetPassword(ResetPasswordRequest request);
    ApiResponse<Object> uploadAvatar(MultipartFile avatar, Jwt jwt) throws IOException;
    ApiResponse<Object> updateProfile(UpdateProfileRequest request, Jwt jwt);
    ApiResponse<Object> getUserInfo(Jwt jwt);
}
