package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.requests.AuthenticationRequest;
import com.vn.cookinote.dtos.requests.RegisterRequest;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.enums.Status;
import com.vn.cookinote.models.User;
import com.vn.cookinote.services.AuthenticationService;
import com.vn.cookinote.services.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class AuthenticationController {

    private final AuthenticationService authenticationService;
    private final UserService userService;
    private final AuthenticationManager authenticationManager;

    @PostMapping("/register")
    public ResponseEntity<ApiResponse<Object>> register(@Valid @RequestBody RegisterRequest registerRequest) {

        // Check if the email already exists in the system
        if (userService.isEmailExist(registerRequest.email())) {
            return ApiResponse.toResponseEntity(ApiStatus.CONFLICT, "Email đã được sử dụng");
        }

        // Check if the username already exists in the system
        if (userService.isUsernameExist(registerRequest.username())) {
            return ApiResponse.toResponseEntity(ApiStatus.CONFLICT, "Tên người dùng đã được sử dụng");
        }

        // Validate the request
        if (!registerRequest.password().equals(registerRequest.confirmPassword())) {
            return ApiResponse.toResponseEntity(ApiStatus.BAD_REQUEST, "Mật khẩu và xác nhận mật khẩu không khớp");
        }

        // Register the user
        authenticationService.register(registerRequest);

        return ApiResponse.toResponseEntity(ApiStatus.CREATED, "Đăng ký thành công");
    }

    @PostMapping("/authenticate")
    public ResponseEntity<ApiResponse<Object>> authenticate(@Valid @RequestBody AuthenticationRequest authenticationRequest) {

        String email = authenticationRequest.email();

        // Check Redis lock first
        if (userService.isLoginLocked(email)) {
            return ApiResponse.toResponseEntity(ApiStatus.FORBIDDEN, "Tài khoản tạm khóa do đăng nhập sai nhiều lần. Vui lòng thử lại sau 10 phút");
        }

        // Check if the user is deactivated in DB
        Optional<User> user = userService.findByEmail(email);
        if (user.isPresent() && user.get().getStatus() != Status.ACTIVE) {
            return ApiResponse.toResponseEntity(ApiStatus.FORBIDDEN, "Tài khoản của bạn đã bị vô hiệu hóa");
        }

        // Authenticate the user
        try {
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            authenticationRequest.email(),
                            authenticationRequest.password()
                    )
            );
        } catch (Exception e) {
            // record failure in Redis and return unauthorized
            userService.recordFailedLogin(email);
            return ApiResponse.toResponseEntity(ApiStatus.UNAUTHORIZED, "Đăng nhập thất bại: Email hoặc mật khẩu không đúng");
        }

        // successful login -> reset fail counter / lock
        userService.resetFailedLogin(email);

        String token = authenticationService.authenticate(authenticationRequest);
        Map<String, String> tokenMap = new HashMap<>();
        tokenMap.put("token", token);

        return ApiResponse.toResponseEntity(ApiStatus.OK, "Đăng nhập thành công", tokenMap);
    }
}
