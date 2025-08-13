package com.vn.cookinote.controllers;

import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiCode;
import com.vn.cookinote.services.EmailService;
import com.vn.cookinote.services.OtpService;
import jakarta.mail.MessagingException;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.Instant;

@RestController
@RequestMapping("/api/v1/email")
@RequiredArgsConstructor
public class EmailController {

    private final EmailService emailService;
    private final OtpService otpService;

    @GetMapping("/request-otp")
    public ResponseEntity<ApiResponse<Object>> sendVerificationCode(@RequestParam("email") String email) {
        String code = otpService.generateOtp(email);
        emailService.sendOtpEmail(email, code);

        return ResponseEntity.ok(ApiResponse.builder()
                .code(ApiCode.SUCCESS.getCode())
                .message(ApiCode.SUCCESS.getMessage())
                .timestamp(Instant.now())
                .build());
    }
}
