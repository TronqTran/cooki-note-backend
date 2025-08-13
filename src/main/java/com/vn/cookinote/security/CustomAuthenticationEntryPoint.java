package com.vn.cookinote.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiCode;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.time.Instant;

@Component
@RequiredArgsConstructor
public class CustomAuthenticationEntryPoint implements AuthenticationEntryPoint {
    private final ObjectMapper mapper;
    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) throws IOException {
        // Set the HTTP status to 401 (Unauthorized)
        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

        // Set the response content type to JSON
        response.setContentType("application/json; charset=UTF-8");

        // Create an error response object with the appropriate error code, message, and exception details
        ApiResponse<Object> errorResponse = ApiResponse.builder()
                .code(ApiCode.UNAUTHORIZED.getCode())
                .message(ApiCode.UNAUTHORIZED.getMessage())
                .timestamp(Instant.now())
                .build();

        // Write the error response as a JSON string to the response output
        response.getWriter().write(mapper.writeValueAsString(errorResponse));
    }
}