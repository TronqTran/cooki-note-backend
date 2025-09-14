package com.vn.cookinote.dtos.requests;

import com.vn.cookinote.enums.Gender;

import java.time.LocalDate;

public record RegisterRequest(
        String email,
        String password,
        String confirmPassword,
        String username,
        String firstName,
        String lastName,
        Gender gender,
        LocalDate dateOfBirth
) {
}
