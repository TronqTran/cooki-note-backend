package com.vn.cookinote.exceptions;

import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiCode;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.oauth2.jwt.JwtException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.time.Instant;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(Exception.class)
    public ResponseEntity<ApiResponse<Object>> handleAllExceptions(Exception ex) {
        ApiResponse<Object> errorResponse = ApiResponse.builder()
                .code(ApiCode.INTERNAL_SERVER_ERROR.getCode())
                .message(ApiCode.INTERNAL_SERVER_ERROR.getMessage())
                .description(ex.getMessage())
                .timestamp(Instant.now())
                .build();

        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
    }

    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<ApiResponse<Object>> handleRuntimeException(RuntimeException ex) {
        ApiResponse<Object> errorResponse = ApiResponse.builder()
                .code(ApiCode.BAD_REQUEST.getCode())
                .message(ApiCode.BAD_REQUEST.getMessage())
                .description(ex.getMessage())
                .timestamp(Instant.now())
                .build();

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errorResponse);
    }

    @ExceptionHandler(IllegalArgumentException.class)
    public ResponseEntity<ApiResponse<Object>> handleIllegalArgumentException(IllegalArgumentException ex) {
        ApiResponse<Object> errorResponse = ApiResponse.builder()
                .code(ApiCode.BAD_REQUEST.getCode())
                .message(ApiCode.BAD_REQUEST.getMessage())
                .description(ex.getMessage())
                .timestamp(Instant.now())
                .build();

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errorResponse);
    }

    @ExceptionHandler(UsernameNotFoundException.class)
    public ResponseEntity<ApiResponse<Object>> handleUsernameNotFoundException(UsernameNotFoundException ex) {
        ApiResponse<Object> errorResponse = ApiResponse.builder()
                .code(ApiCode.NOT_FOUND.getCode())
                .message(ApiCode.NOT_FOUND.getMessage())
                .description(ex.getMessage())
                .timestamp(Instant.now())
                .build();

        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
    }

    @ExceptionHandler(JwtException.class)
    public ResponseEntity<ApiResponse<Object>> handleJwtException(JwtException ex) {
        ApiResponse<Object> errorResponse = ApiResponse.builder()
                .code(ApiCode.UNAUTHORIZED.getCode())
                .message(ApiCode.UNAUTHORIZED.getMessage())
                .description(ex.getMessage())
                .timestamp(Instant.now())
                .build();

        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
    }
}
