package com.vn.cookinote.services.iml;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.vn.cookinote.dtos.UserDto;
import com.vn.cookinote.dtos.requests.ChangePasswordRequest;
import com.vn.cookinote.dtos.requests.ResetPasswordRequest;
import com.vn.cookinote.dtos.requests.UpdateProfileRequest;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiCode;
import com.vn.cookinote.models.User;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.security.CustomUser;
import com.vn.cookinote.services.OtpService;
import com.vn.cookinote.services.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.time.Instant;
import java.util.HashMap;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserServiceImpl implements UserService {
    private final PasswordEncoder passwordEncoder;
    private final UserRepository userRepository;
    private final OtpService otpService;
    private final Cloudinary cloudinary;

    @Override
    public ApiResponse<Object> changePassword(ChangePasswordRequest request, Principal connectedUser) {
        //Check if the user is logged in
        User user;
        if (connectedUser instanceof JwtAuthenticationToken jwtAuth) {
            user = userRepository.findByEmail(jwtAuth.getName())
                    .orElseThrow(() -> new IllegalArgumentException("User not found"));
        } else if (connectedUser instanceof UsernamePasswordAuthenticationToken upAuth) {
            CustomUser customUser = (CustomUser) upAuth.getPrincipal();
            user = customUser.getUser();
        } else {
            throw new IllegalArgumentException("Unsupported authentication type");
        }

        log.info("Starting password change process for user: {}", user.getEmail());

        //Check if the current password is correct
        if (!passwordEncoder.matches(request.currentPassword(), user.getPassword())
            || !request.newPassword().equals(request.confirmNewPassword())){

            return ApiResponse.builder()
                    .code(ApiCode.PASSWORD_MISMATCH.getCode())
                    .message(ApiCode.PASSWORD_MISMATCH.getMessage())
                    .timestamp(Instant.now())
                    .build();
        }

        //Save the new password
        user.setPassword(passwordEncoder.encode(request.newPassword()));
        userRepository.save(user);
        return ApiResponse.builder()
                .code(ApiCode.UPDATED.getCode())
                .message(ApiCode.UPDATED.getMessage())
                .timestamp(Instant.now())
                .build();
    }

    @Override
    public ApiResponse<Object> resetPassword(ResetPasswordRequest request) {
        log.info("Starting password reset process for email: {}", request.email());

        // Validate the request
        if (!request.newPassword().equals(request.confirmPassword())) {
            return ApiResponse.builder()
                    .code(ApiCode.PASSWORD_MISMATCH.getCode())
                    .message(ApiCode.PASSWORD_MISMATCH.getMessage())
                    .description("New password and confirm password do not match")
                    .timestamp(Instant.now())
                    .build();
        }

        // Verify OTP code
        boolean isValid = otpService.validateOtp(
                request.email(),
                request.otpCode()
        );

        if (!isValid) {
            return ApiResponse.builder()
                    .code(ApiCode.INVALID_OTP.getCode())
                    .message(ApiCode.INVALID_OTP.getMessage())
                    .description("Invalid OTP code")
                    .timestamp(Instant.now())
                    .build();
        }

        // Find and update user
        User user = userRepository.findByEmail(request.email())
                .orElseThrow(() -> new IllegalArgumentException("User not found"));

        // Update the new password
        user.setPassword(passwordEncoder.encode(request.newPassword()));
        userRepository.save(user);
        return ApiResponse.builder()
                .code(ApiCode.UPDATED.getCode())
                .message(ApiCode.UPDATED.getMessage())
                .timestamp(Instant.now())
                .build();

    }

    @Override
    public ApiResponse<Object> uploadAvatar(MultipartFile avatar, Jwt jwt) throws IOException {
        log.info("Starting avatar upload process for user: {}", jwt.getSubject());
        User user = userRepository.findByEmail(jwt.getSubject()).orElseThrow(
                () -> new IllegalArgumentException("User not found")
        );

        // Delete the previous avatar if exists
        if (user.getAvatarPublicId() != null) {
            cloudinary.uploader().destroy(user.getAvatarPublicId(), ObjectUtils.emptyMap());
        }

        // Upload the new avatar
        var uploadResult = cloudinary.uploader().upload(avatar.getBytes(), ObjectUtils.asMap(
                "folder", "profile_avatar",
                "resource_type", "image",
                "overwrite", true

        ));

        String publicId = (String) uploadResult.get("public_id");
        String url = (String) uploadResult.get("secure_url");

        // Update the user's avatar'
        user.setAvatarPublicId(publicId);
        user.setAvatarUrl(url);
        userRepository.save(user);

        return ApiResponse.builder()
                .code(ApiCode.UPDATED.getCode())
                .message(ApiCode.UPDATED.getMessage())
                .data(Map.of("avatarUrl", url))
                .timestamp(Instant.now())
                .build();
    }

    @Override
    public ApiResponse<Object> updateProfile(UpdateProfileRequest request, Jwt jwt) {
        log.info("Updating profile for user: {}", jwt.getSubject());
        User user = userRepository.findByEmail(jwt.getSubject()).orElseThrow(
                () -> new UsernameNotFoundException("User not found with email: " + jwt.getSubject())
        );
        // Update the user's profile information'
        if (request.firstName() != null) user.setFirstName(request.firstName());
        if (request.lastName() != null) user.setLastName(request.lastName());
        if (request.username() != null) user.setUsername(request.username());
        if (request.biography() != null) user.setBiography(request.biography());
        userRepository.save(user);

        // Prepare the user information to return
        UserDto userInfo = UserDto.builder()
                .id(user.getId())
                .email(user.getEmail())
                .username(user.getUsername())
                .avatarUrl(user.getAvatarUrl())
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .biography(user.getBiography())
                .followers(0)
                .following(0)
                .build();

        return ApiResponse.builder()
                .code(ApiCode.UPDATED.getCode())
                .message(ApiCode.UPDATED.getMessage())
                .data(userInfo)
                .timestamp(Instant.now())
                .build();
    }

    @Override
    public ApiResponse<Object> getUserInfo(Jwt jwt) {
        log.info("Getting user info for user: {}", jwt.getSubject());
        User user = userRepository.findByEmail(jwt.getSubject()).orElseThrow(
                () -> new UsernameNotFoundException("User not found with email: " + jwt.getSubject())
        );

        // Prepare the user information to return
        UserDto userInfo = UserDto.builder()
                .id(user.getId())
                .email(user.getEmail())
                .username(user.getUsername())
                .avatarUrl(user.getAvatarUrl())
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .biography(user.getBiography())
                .followers(0)
                .following(0)
                .build();


        // Return user information
        return ApiResponse.builder()
                .code(ApiCode.SUCCESS.getCode())
                .message(ApiCode.SUCCESS.getMessage())
                .data(userInfo)
                .timestamp(Instant.now())
                .build();
    }
}
