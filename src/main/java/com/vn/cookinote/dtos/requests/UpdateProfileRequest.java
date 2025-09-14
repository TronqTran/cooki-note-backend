package com.vn.cookinote.dtos.requests;

import com.vn.cookinote.enums.Gender;

import java.time.LocalDate;

public record UpdateProfileRequest(
        String firstName,
        String lastName,
        String username,
        String biography,
        Gender gender,
        LocalDate dateOfBirth
) {
}
