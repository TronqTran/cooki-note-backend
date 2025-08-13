package com.vn.cookinote.dtos.requests;

public record ChangePasswordRequest(
    String currentPassword,
    String newPassword,
    String confirmNewPassword
) {
}
