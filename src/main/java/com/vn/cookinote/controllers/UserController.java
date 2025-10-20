package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.UserDto;
import com.vn.cookinote.dtos.UserDto1;
import com.vn.cookinote.dtos.requests.ChangePasswordRequest;
import com.vn.cookinote.dtos.requests.ResetPasswordRequest;
import com.vn.cookinote.dtos.requests.UpdateProfileRequest;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.User;
import com.vn.cookinote.services.OtpService;
import com.vn.cookinote.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1/users")
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;
    private final OtpService otpService;

    @PatchMapping("/change-password")
    public ResponseEntity<ApiResponse<Object>> changePassword(
            @RequestBody ChangePasswordRequest request,
            Principal connectedUser) {

        //Get the authenticated user
        User user = userService.getAuthenticatedUser(connectedUser);

        //Check if the current password is correct
        if (!passwordEncoder.matches(request.currentPassword(), user.getPassword())
                || !request.newPassword().equals(request.confirmNewPassword())){

            return ApiResponse.toResponseEntity(ApiStatus.BAD_REQUEST,
                    "Mật khẩu hiện tại không đúng hoặc mật khẩu mới không khớp");
        }

        user = userService.changePassword(request, connectedUser);

        return ApiResponse.toResponseEntity(ApiStatus.OK, "Đổi mật khẩu thành công");
    }

    @PatchMapping("/reset-password")
    public ResponseEntity<ApiResponse<Object>> resetPassword(
            @RequestBody ResetPasswordRequest request) {

        // Find and update user
        if (!userService.isEmailExist(request.email())) {
                return ApiResponse.toResponseEntity(ApiStatus.NOT_FOUND, "Email không tồn tại");
        }

        // Validate the request
        if (!request.newPassword().equals(request.confirmPassword())) {
             return ApiResponse.toResponseEntity(ApiStatus.BAD_REQUEST, "Mật khẩu và xác nhận mật khẩu không khớp");
        }

        // Verify OTP code
        boolean isValid = otpService.validateOtp(
                request.email(),
                request.otpCode()
        );

        if (!isValid) {
            return ApiResponse.toResponseEntity(ApiStatus.UNAUTHORIZED, "Mã OTP không hợp lệ hoặc đã hết hạn");
        }

        // Reset password
        User user = userService.resetPassword(request);

        return ApiResponse.toResponseEntity(ApiStatus.OK, "Đặt lại mật khẩu thành công");
    }

    @PatchMapping("/upload-avatar")
    public ResponseEntity<ApiResponse<Object>> uploadAvatar(@RequestParam("file") MultipartFile file, @AuthenticationPrincipal Jwt jwt) throws IOException {
        String email = jwt.getSubject();
        User user = userService.uploadAvatar(file, email);

        return ApiResponse.toResponseEntity(ApiStatus.OK, "Avatar được tải lên thành công");
    }

    @PatchMapping("/update-profile")
    public ResponseEntity<ApiResponse<Object>> updateProfile(@RequestBody UpdateProfileRequest request, @AuthenticationPrincipal Jwt jwt) {
        String email = jwt.getSubject();
        User user = userService.updateProfile(request, email);
        // Prepare the user information to return
        UserDto userInfo = UserDto.fromEntity(user);

        return ApiResponse.toResponseEntity(ApiStatus.OK, "Cập nhật hồ sơ thành công", userInfo);
    }

    @GetMapping("/me")
    public ResponseEntity<ApiResponse<Object>> getInformation(@AuthenticationPrincipal Jwt jwt) {
        User user = userService.findByEmail(jwt.getSubject()).orElseThrow(
                () -> new IllegalArgumentException("User not found with email: " + jwt.getSubject())
        );
        UserDto userInfo = UserDto.fromEntity(user);

        return ApiResponse.toResponseEntity(ApiStatus.OK, "Lấy thông tin người dùng thành công", userInfo);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<Object>> getUserById(@PathVariable Long id) {
        User user = userService.findById(id).orElseThrow(
                () -> new IllegalArgumentException("User not found with id: " + id)
        );
        UserDto userInfo = UserDto.fromEntity(user);

        return ApiResponse.toResponseEntity(ApiStatus.OK, "Lấy thông tin người dùng thành công", userInfo);
    }

    @GetMapping("/search")
    public ResponseEntity<ApiResponse<List<UserDto1>>> searchUser(@RequestParam("keyword") String keyword) {
        Iterable<User> users = userService.searchUser(keyword);
        List<UserDto1> userDTOS = new ArrayList<>();
        users.forEach(user -> userDTOS.add(UserDto1.fromEntity(user)));
        return ApiResponse.toResponseEntity(ApiStatus.OK, "Tìm kiếm người dùng thành công", userDTOS);
    }

}
