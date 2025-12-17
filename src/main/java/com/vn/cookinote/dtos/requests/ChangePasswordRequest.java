package com.vn.cookinote.dtos.requests;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public record ChangePasswordRequest(
        @NotBlank(message = "Mật khẩu hiện tại không được để trống")
        String currentPassword,

        @NotBlank(message = "Mật khẩu mới không được để trống")
        @Size(min = 8, max = 32, message = "Mật khẩu mới phải từ 8–32 ký tự")
        String newPassword,

        @NotBlank(message = "Xác nhận mật khẩu mới không được để trống")
        String confirmNewPassword
) {
}
