package com.vn.cookinote.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
@AllArgsConstructor
public enum ApiStatus {
    // Success
    OK(HttpStatus.OK, "Thành công"),
    CREATED(HttpStatus.CREATED, "Đã tạo mới"),
    ACCEPTED(HttpStatus.ACCEPTED, "Đã chấp nhận"),
    NO_CONTENT(HttpStatus.NO_CONTENT, "Không có nội dung"),

    // Client Errors
    BAD_REQUEST(HttpStatus.BAD_REQUEST, "Yêu cầu không hợp lệ"),
    UNAUTHORIZED(HttpStatus.UNAUTHORIZED, "Chưa xác thực"),
    FORBIDDEN(HttpStatus.FORBIDDEN, "Không có quyền truy cập"),
    NOT_FOUND(HttpStatus.NOT_FOUND, "Không tìm thấy"),
    CONFLICT(HttpStatus.CONFLICT, "Xung đột dữ liệu"),
    UNPROCESSABLE_ENTITY(HttpStatus.UNPROCESSABLE_ENTITY, "Không thể xử lý"),

    // Server Errors
    INTERNAL_SERVER_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "Lỗi hệ thống"),
    NOT_IMPLEMENTED(HttpStatus.NOT_IMPLEMENTED, "Chưa hỗ trợ"),
    BAD_GATEWAY(HttpStatus.BAD_GATEWAY, "Cổng kết nối lỗi"),
    SERVICE_UNAVAILABLE(HttpStatus.SERVICE_UNAVAILABLE, "Dịch vụ tạm thời không khả dụng"),
    GATEWAY_TIMEOUT(HttpStatus.GATEWAY_TIMEOUT, "Hết thời gian chờ");

    private final HttpStatus httpStatus;
    private final String message;
}
