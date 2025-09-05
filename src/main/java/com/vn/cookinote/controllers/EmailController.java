package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.services.EmailService;
import com.vn.cookinote.services.OtpService;
import com.vn.cookinote.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/email")
@RequiredArgsConstructor
public class EmailController {

    private final EmailService emailService;
    private final OtpService otpService;
    private final UserService userService;

    @GetMapping("/request-otp")
    public ResponseEntity<ApiResponse<Object>> sendVerificationCode(@RequestParam("email") String email) {
        // Check if the email exists in the system
        if (!userService.isEmailExist(email)) {
            return ApiResponse.toResponseEntity(ApiStatus.NOT_FOUND, "Email không tồn tại trong hệ thống");
        }

        // Generate OTP code
        String code = otpService.generateOtp(email);
        // Send OTP code to the user's email'
        emailService.sendOtpEmail(email, code);

        return ApiResponse.toResponseEntity(ApiStatus.OK, "Mã OTP đã được gửi đến email của bạn");
    }
}
