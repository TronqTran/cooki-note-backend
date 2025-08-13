package com.vn.cookinote.dtos.requests;

public record UpdateProfileRequest(
        String firstName,
        String lastName,
        String username,
        String biography
) {
}
