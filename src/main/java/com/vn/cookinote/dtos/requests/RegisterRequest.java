package com.vn.cookinote.dtos.requests;

public record RegisterRequest(
        String email,
        String password,
        String confirmPassword,
        String username,
        String firstName,
        String lastName
) {
}
