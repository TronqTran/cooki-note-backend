package com.vn.cookinote.dtos.requests;

public record AuthenticationRequest(
        String email,
        String password
) {
}
