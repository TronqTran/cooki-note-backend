package com.vn.cookinote.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum ApiCode {
    // ✅ Success
    SUCCESS("200", "Thao tác thành công."),
    CREATED("201", "Tạo dữ liệu thành công."),
    UPDATED("200", "Cập nhật dữ liệu thành công."),
    DELETED("200", "Xóa dữ liệu thành công."),

    REGISTERED("201", "Đăng ký thành công. Vui lòng đăng nhập để tiếp tục."),
    AUTHENTICATED("200", "Đăng nhập thành công."),

    // ❌ Client errors
    BAD_REQUEST("400", "Yêu cầu không hợp lệ. Vui lòng kiểm tra lại dữ liệu."),
    UNAUTHORIZED("401", "Bạn cần đăng nhập để tiếp tục."),
    FORBIDDEN("403", "Bạn không có quyền truy cập nội dung này."),
    NOT_FOUND("404", "Không tìm thấy dữ liệu hoặc trang bạn yêu cầu."),
    METHOD_NOT_ALLOWED("405", "Thao tác này không được phép."),
    CONFLICT("409", "Dữ liệu đã tồn tại hoặc đang bị xung đột."),
    TOO_MANY_REQUESTS("429", "Bạn thao tác quá nhanh, vui lòng thử lại sau."),

    EMAIL_EXIST("400", "Email đã tồn tại. Vui lòng sử dụng email khác."),
    USERNAME_EXIST("400", "Tên nguời dùng đã tồn tại. Vui lòng sử dụng tên khác."),
    PASSWORD_MISMATCH("400", "Mật khẩu không khớp. Vui lòng kiểm tra lại."),
    LOGIN_FAILED("401", "Đăng nhập không thành công. Vui lòng kiểm tra lại email và mật khẩu."),
    INVALID_OTP("400", "Mã OTP không hợp lệ. Vui lòng kiểm tra lại."),

    // 🔴 Server errors
    INTERNAL_SERVER_ERROR("500", "Có lỗi xảy ra trên hệ thống. Vui lòng thử lại sau."),
    BAD_GATEWAY("502", "Máy chủ phản hồi không hợp lệ. Vui lòng thử lại."),
    SERVICE_UNAVAILABLE("503", "Hệ thống đang bận hoặc bảo trì. Vui lòng quay lại sau."),
    GATEWAY_TIMEOUT("504", "Kết nối đến máy chủ bị gián đoạn. Vui lòng thử lại.");

    private final String code;
    private final String message;
}