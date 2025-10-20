package com.vn.cookinote.services;

import com.vn.cookinote.dtos.requests.ChangePasswordRequest;
import com.vn.cookinote.dtos.requests.ResetPasswordRequest;
import com.vn.cookinote.dtos.requests.UpdateProfileRequest;
import com.vn.cookinote.models.User;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.Optional;

public interface UserService {
    boolean isEmailExist(String email);
    boolean isUsernameExist(String username);
    Optional<User> findByEmail(String email);
    User changePassword(ChangePasswordRequest request, Principal connectedUser);
    User resetPassword(ResetPasswordRequest request);
    User uploadAvatar(MultipartFile avatar, String email) throws IOException;
    User updateProfile(UpdateProfileRequest request, String  email);
    User getAuthenticatedUser(Principal connectedUser);
    Iterable<User> searchUser(String keyword);
    Optional<User> findById(Long id);
}
