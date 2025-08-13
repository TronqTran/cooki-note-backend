package com.vn.cookinote.dtos.requests;

public record ResetPasswordRequest(
        String email,
        String otpCode,
        String newPassword,
        String confirmPassword
) {
}
