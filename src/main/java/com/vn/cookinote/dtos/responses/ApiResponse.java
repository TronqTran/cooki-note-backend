package com.vn.cookinote.dtos.responses;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.vn.cookinote.enums.ApiStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import java.time.Instant;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ApiResponse<T> {
    @JsonProperty("code")
    private int code;
    @JsonProperty("message")
    private String message;
    @JsonProperty("description")
    private String description;
    @JsonProperty("data")
    private T data;
    @JsonProperty("timestamp")
    private Instant timestamp;

    // Factory method to create ResponseEntity
    public static <T> ResponseEntity<ApiResponse<T>> toResponseEntity(ApiStatus status, String message, T data) {
        return ResponseEntity
                .status(status.getHttpStatus())
                .contentType(MediaType.APPLICATION_JSON)
                .body(ApiResponse.<T>builder()
                        .code(status.getHttpStatus().value())
                        .message(message)
                        .data(data)
                        .timestamp(Instant.now())
                        .build());
    }


    public static <T> ResponseEntity<ApiResponse<T>> toResponseEntity(ApiStatus status, String message) {
        return toResponseEntity(status, message, null);
    }
}
