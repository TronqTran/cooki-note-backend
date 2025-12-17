package com.vn.cookinote.dtos.requests;

import com.vn.cookinote.enums.Gender;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Past;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

import java.time.LocalDate;

public record UpdateProfileRequest(
        @Size(max = 50, message = "Tên không được vượt quá 50 ký tự")
        String firstName,

        @Size(max = 50, message = "Họ không được vượt quá 50 ký tự")
        String lastName,

        @NotBlank(message = "Tên người dùng không được để trống")
        @Size(min = 4, max = 20, message = "Tên người dùng phải từ 4–20 ký tự")
        @Pattern(
                regexp = "^[a-zA-Z0-9_]+$",
                message = "Tên người dùng chỉ được chứa chữ, số và dấu _"
        )
        String username,

        @Size(max = 500, message = "Giới thiệu tối đa 500 ký tự")
        String biography,

        Gender gender,

        @Past(message = "Ngày sinh phải là ngày trong quá khứ")
        LocalDate dateOfBirth
) {
}
