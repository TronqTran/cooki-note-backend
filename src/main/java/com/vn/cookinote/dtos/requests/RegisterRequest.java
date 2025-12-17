package com.vn.cookinote.dtos.requests;

import com.vn.cookinote.enums.Gender;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

import java.time.LocalDate;

public record RegisterRequest(
        @NotBlank(message = "Email không được để trống")
        @Email(message = "Email không đúng định dạng")
        String email,

        @NotBlank(message = "Mật khẩu không được để trống")
        @Size(min = 8, max = 32, message = "Mật khẩu phải từ 8–32 ký tự")
        @Pattern(
                regexp = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d).+$",
                message = "Mật khẩu phải có chữ hoa, chữ thường và số"
        )
        String password,

        @NotBlank(message = "Xác nhận mật khẩu không được để trống")
        String confirmPassword,

        @NotBlank(message = "Tên người dùng không được để trống")
        @Size(min = 4, max = 20, message = "Tên người dùng phải từ 4–20 ký tự")
        @Pattern(
                regexp = "^[a-zA-Z0-9_]+$",
                message = "Tên người dùng chỉ được chứa chữ, số và dấu _"
        )
        String username,
        String firstName,
        String lastName,
        Gender gender,
        LocalDate dateOfBirth
) {
}
