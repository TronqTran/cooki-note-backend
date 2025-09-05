package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.requests.AuthenticationRequest;
import com.vn.cookinote.dtos.requests.RegisterRequest;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.services.AuthenticationService;
import com.vn.cookinote.services.UserService;
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

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class AuthenticationController {

    private final AuthenticationService authenticationService;
    private final UserService userService;
    private final AuthenticationManager authenticationManager;

    @PostMapping("/register")
    public ResponseEntity<ApiResponse<Object>> register(@RequestBody RegisterRequest registerRequest) {

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
    public ResponseEntity<ApiResponse<Object>> authenticate(@RequestBody AuthenticationRequest authenticationRequest) {

        // Authenticate the user
        try {
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            authenticationRequest.email(),
                            authenticationRequest.password()
                    )
            );
        } catch (Exception e) {
            return ApiResponse.toResponseEntity(ApiStatus.UNAUTHORIZED, "Đăng nhập thất bại: Email hoặc mật khẩu không đúng");
        }

        String token = authenticationService.authenticate(authenticationRequest);
        Map<String, String> tokenMap = new HashMap<>();
        tokenMap.put("token", token);

        return ApiResponse.toResponseEntity(ApiStatus.OK, "Đăng nhập thành công", tokenMap);
    }
}
