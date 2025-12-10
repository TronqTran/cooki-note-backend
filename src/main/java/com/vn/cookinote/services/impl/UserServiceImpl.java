package com.vn.cookinote.services.impl;

import com.vn.cookinote.dtos.requests.ChangePasswordRequest;
import com.vn.cookinote.dtos.requests.ResetPasswordRequest;
import com.vn.cookinote.dtos.requests.UpdateProfileRequest;
import com.vn.cookinote.enums.ProfileMediaType;
import com.vn.cookinote.enums.Status;
import com.vn.cookinote.models.Media;
import com.vn.cookinote.models.User;
import com.vn.cookinote.models.UserMedia;
import com.vn.cookinote.models.keys.UserMediaKey;
import com.vn.cookinote.repositories.UserMediaRepository;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.security.CustomUser;
import com.vn.cookinote.services.MediaService;
import com.vn.cookinote.services.OtpService;
import com.vn.cookinote.services.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.time.Duration;
import java.util.Locale;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserServiceImpl implements UserService {
    private final PasswordEncoder passwordEncoder;
    private final UserRepository userRepository;
    private final OtpService otpService;
    private final UserMediaRepository userMediaRepository;
    private final MediaService mediaService;
    private final StringRedisTemplate redisTemplate;

    private static final String FAIL_KEY_PREFIX = "login:fail:";
    private static final String LOCK_KEY_PREFIX = "login:lock:";
    private static final long FAIL_THRESHOLD = 3;
    private static final Duration LOCK_DURATION = Duration.ofMinutes(10);

    private String failKey(String email) {
        return FAIL_KEY_PREFIX + email.toLowerCase(Locale.ROOT);
    }

    private String lockKey(String email) {
        return LOCK_KEY_PREFIX + email.toLowerCase(Locale.ROOT);
    }
    @Override
    public boolean isEmailExist(String email) {
        return userRepository.existsByEmail(email);
    }

    @Override
    public boolean isUsernameExist(String username) {
        User user = userRepository.existsByUsername(username);
        return user != null;
    }

    @Override
    public Optional<User> findByEmail(String email) {
        return Optional.ofNullable(userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("Email không tồn tại: " + email)));
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
    public User uploadAvatar(MultipartFile avatar, Long userId) throws IOException {

        User user = userRepository.findById(userId)
                .orElseThrow(() -> new UsernameNotFoundException("User not found with Id: " + userId));

        // Upload the new avatar
        Media media = mediaService.uploadUserAvatar(avatar);

        UserMedia userMedia = UserMedia.builder()
                .id(new UserMediaKey(user.getId(), media.getId()))
                .user(user)
                .media(media)
                .type(ProfileMediaType.AVATAR)
                .build();
        userMediaRepository.save(userMedia);
        return user;
    }

    @Override
    public User updateProfile(UpdateProfileRequest request, Long userId) {

        User user = userRepository.findById(userId)
                .orElseThrow(() -> new UsernameNotFoundException("User not found with Id: " + userId));

        log.info("Updating profile for user: {}", user.getEmail());

        // Update the user's profile information'
        if (!request.firstName().isEmpty()) user.setFirstName(request.firstName());
        if (!request.lastName().isEmpty()) user.setLastName(request.lastName());
        if (!request.username().isEmpty()) user.setUsername(request.username());
        if (!request.biography().isEmpty()) user.setBiography(request.biography());
        if (request.dateOfBirth() != null) user.setDateOfBirth(request.dateOfBirth());
        if (request.gender() != null) user.setGender(request.gender());
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

    @Override
    public Iterable<User> searchUserActive(String keyword) {
        return userRepository.searchByUsernameActive(keyword);
    }

    @Override
    public Optional<User> findById(Long id) {
        return Optional.ofNullable(userRepository.findById(id)
                .orElseThrow(() -> new UsernameNotFoundException("User not found with id: " + id)));
    }

    @Override
    public User deactivateUser(Long userId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new UsernameNotFoundException("User not found with Id: " + userId));
        user.setStatus(Status.DEACTIVATED);
        user.setEmail(user.getEmail() + "_deactivated_" + System.currentTimeMillis());
        return userRepository.save(user);
    }

    @Override
    public Page<User> findAllUsers(Pageable pageable) {
        Pageable sortedByCreatedAt = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                Sort.by(Sort.Direction.DESC, "createdAt")
        );
        return userRepository.findAllByStatusOrStatus(Status.ACTIVE, Status.BANNED, sortedByCreatedAt);
    }

    @Override
    public Iterable<User> searchUserAll(String keyword) {
        return userRepository.findByUsername(keyword);
    }

    @Override
    public User activateUser(Long userId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new UsernameNotFoundException("User not found with Id: " + userId));
        user.setStatus(Status.ACTIVE);
        userRepository.save(user);
        return user;
    }

    @Override
    public User banUser(Long userId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new UsernameNotFoundException("User not found with Id: " + userId));
        user.setStatus(Status.BANNED);
        userRepository.save(user);
        return user;
    }

    @Override
    public boolean isLoginLocked(String email) {
        if (email == null) return false;
        return redisTemplate.hasKey(lockKey(email));
    }

    @Override
    public void recordFailedLogin(String email) {
        if (email == null) return;
        String lk = lockKey(email);
        // if already locked, nothing to do
        if (redisTemplate.hasKey(lk)) return;

        String fk = failKey(email);
        Long count = redisTemplate.opsForValue().increment(fk);
        if (count != null && count == 1) {
            // set expire for the fail counter so it resets after the same window as lock duration
            redisTemplate.expire(fk, LOCK_DURATION.getSeconds(), TimeUnit.SECONDS);
        }

        if (count != null && count >= FAIL_THRESHOLD) {
            // create a lock key with TTL and remove the fail counter
            redisTemplate.opsForValue().set(lk, "1", LOCK_DURATION.getSeconds(), TimeUnit.SECONDS);
            redisTemplate.delete(fk);
        }
    }

    @Override
    public void resetFailedLogin(String email) {
        if (email == null) return;
        redisTemplate.delete(failKey(email));
        redisTemplate.delete(lockKey(email));
    }
}
