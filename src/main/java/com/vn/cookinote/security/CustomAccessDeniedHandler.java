package com.vn.cookinote.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiCode;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.time.Instant;

@Component
@RequiredArgsConstructor
public class CustomAccessDeniedHandler implements AccessDeniedHandler {
    private final ObjectMapper mapper;
    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException {
        // Set the HTTP status to 403 (Forbidden)
        response.setStatus(HttpServletResponse.SC_FORBIDDEN);

        // Set the response content type to JSON
        response.setContentType("application/json; charset=UTF-8");

        // Create an error response object with the appropriate error code, message, and exception details
        ApiResponse<Object> errorResponse = ApiResponse.builder()
                .code(ApiCode.FORBIDDEN.getCode())
                .message(ApiCode.FORBIDDEN.getMessage())
                .timestamp(Instant.now())
                .build();

        // Write the error response as a JSON string to the response output
        response.getWriter().write(mapper.writeValueAsString(errorResponse));
    }
}
