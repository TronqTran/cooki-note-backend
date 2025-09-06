package com.vn.cookinote.services.impl;

import com.vn.cookinote.services.EmailService;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class EmailServiceImpl implements EmailService {
    private final JavaMailSender javaMailSender;

    @Override
    public void sendOtpEmail(String to, String otp) {
        log.info("Sending OTP email to: {}", to);

        try {
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");

            helper.setTo(to);
            helper.setSubject("Mã xác thực OTP của bạn");

            String htmlContent = """
            <!DOCTYPE html>
            <html lang="vi">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Xác thực Email</title>
                <style>
                    body {
                        margin: 0;
                        padding: 0;
                        font-family: 'Helvetica Neue', Arial, sans-serif;
                        background-color: #f0f2f5;
                    }
                    .container {
                        max-width: 600px;
                        margin: 20px auto;
                        background-color: #ffffff;
                        border-radius: 10px;
                        overflow: hidden;
                        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
                    }
                    .header {
                        background: linear-gradient(135deg, #6b48ff, #00ddeb);
                        padding: 25px;
                        text-align: center;
                        color: #ffffff;
                    }
                    .header h2 {
                        margin: 0;
                        font-size: 26px;
                        font-weight: 500;
                    }
                    .content {
                        padding: 30px;
                        text-align: center;
                    }
                    .otp-box {
                        font-size: 28px;
                        font-weight: bold;
                        color: #1a1a1a;
                        background-color: #f1faff;
                        padding: 15px 25px;
                        border: 2px dashed #6b48ff;
                        border-radius: 8px;
                        display: inline-block;
                        margin: 20px 0;
                        letter-spacing: 3px;
                    }
                    .content p {
                        font-size: 16px;
                        color: #555555;
                        line-height: 1.6;
                        margin: 10px 0;
                    }
                    .warning {
                        font-size: 14px;
                        color: #888888;
                        margin-top: 20px;
                    }
                    .footer {
                        background-color: #f9fafb;
                        padding: 20px;
                        text-align: center;
                        font-size: 13px;
                        color: #aaaaaa;
                    }
                    .footer a {
                        color: #6b48ff;
                        text-decoration: none;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <div class="header">
                        <h2>🔐 Xác thực Email</h2>
                    </div>
                    <div class="content">
                        <p>Xin chào,</p>
                        <p>Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi! Vui lòng sử dụng mã OTP dưới đây để xác thực địa chỉ email của bạn:</p>
                        <div class="otp-box">%s</div>
                        <p>Mã OTP này có hiệu lực trong <strong>5 phút</strong>.</p>
                        <p class="warning">Nếu bạn không yêu cầu xác thực, vui lòng bỏ qua email này hoặc liên hệ với đội ngũ hỗ trợ.</p>
                    </div>
                    <div class="footer">
                        <p>© 2025 Công ty của bạn. Mọi quyền được bảo lưu.</p>
                        <p><a href="#">Liên hệ hỗ trợ</a> | <a href="#">Truy cập website</a></p>
                    </div>
                </div>
            </body>
            </html>
            """.formatted(otp);

            helper.setText(htmlContent, true); // true để gửi HTML

            javaMailSender.send(mimeMessage);

        } catch (MessagingException e) {
            log.error("Lỗi khi gửi email OTP", e);
        }
    }

}
