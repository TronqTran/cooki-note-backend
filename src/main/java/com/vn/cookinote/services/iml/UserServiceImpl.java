package com.vn.cookinote.services.iml;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.vn.cookinote.dtos.requests.ChangePasswordRequest;
import com.vn.cookinote.dtos.requests.ResetPasswordRequest;
import com.vn.cookinote.dtos.requests.UpdateProfileRequest;
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
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserServiceImpl implements UserService {
    private final PasswordEncoder passwordEncoder;
    private final UserRepository userRepository;
    private final Cloudinary cloudinary;
    private final OtpService otpService;

    @Override
    public boolean isEmailExist(String email) {
        return userRepository.existsByEmail(email);
    }

    @Override
    public boolean isUsernameExist(String username) {
        return userRepository.existsByUsername(username);
    }

    @Override
    public Optional<User> findByEmail(String email) {
        return Optional.ofNullable(userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("User not found with email: " + email)));
    }

    @Override
    public User changePassword(ChangePasswordRequest request, Principal connectedUser) {
        User user = getAuthenticatedUser(connectedUser);
        log.info("Starting password change process for user: {}", user.getEmail());
        //Save the new password
        user.setPassword(passwordEncoder.encode(request.newPassword()));
        userRepository.save(user);
        return user;
    }

    @Override
    public User resetPassword(ResetPasswordRequest request) {
        log.info("Starting password reset process for email: {}", request.email());

        // Find and update user
        User user = userRepository.findByEmail(request.email())
                .orElseThrow(() -> new UsernameNotFoundException("User not found with email: " + request.email()));

        // Update the new password
        user.setPassword(passwordEncoder.encode(request.newPassword()));
        userRepository.save(user);
        otpService.clearOtp(user.getEmail());
        return user;
    }

    @Override
    public User uploadAvatar(MultipartFile avatar, String email) throws IOException {

        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("User not found with email: " + email));

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

        return user;
    }

    @Override
    public User updateProfile(UpdateProfileRequest request, String email) {

        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("User not found with email: " + email));

        log.info("Updating profile for user: {}", user.getEmail());

        // Update the user's profile information'
        if (!request.firstName().isEmpty()) user.setFirstName(request.firstName());
        if (!request.lastName().isEmpty()) user.setLastName(request.lastName());
        if (!request.username().isEmpty()) user.setUsername(request.username());
        if (!request.biography().isEmpty()) user.setBiography(request.biography());
        userRepository.save(user);

        return user;
    }

    @Override
    public User getAuthenticatedUser(Principal connectedUser) {
        if (connectedUser instanceof JwtAuthenticationToken jwtAuth) {
            return userRepository.findByEmail(jwtAuth.getName())
                    .orElseThrow(() -> new UsernameNotFoundException("User not found with email: " + jwtAuth.getName()));
        } else if (connectedUser instanceof UsernamePasswordAuthenticationToken upAuth) {
            CustomUser customUser = (CustomUser) upAuth.getPrincipal();
            return customUser.getUser();
        } else {
            throw new IllegalArgumentException("Unsupported authentication type");
        }
    }
}
