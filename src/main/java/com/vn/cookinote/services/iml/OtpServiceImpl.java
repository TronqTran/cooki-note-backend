package com.vn.cookinote.services.iml;

import com.vn.cookinote.services.OtpService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Random;
import java.util.concurrent.TimeUnit;

@Service
@RequiredArgsConstructor
public class OtpServiceImpl implements OtpService {

    private final RedisTemplate<String, String> redisTemplate;
    private static final long EXPIRE_MINUTES = 5;

    @Override
    public String generateOtp(String email) {
        // Generate a random 6-digit number
        String otp = String.valueOf(new Random().nextInt(900000) + 100000); // 6 số
        redisTemplate.opsForValue().set("OTP:" + email, otp, EXPIRE_MINUTES, TimeUnit.MINUTES);
        return otp;
    }

    @Override
    public boolean validateOtp(String email, String otp) {
        // Check if the provided OTP matches the cached OTP for the given email
        String cachedOtp = redisTemplate.opsForValue().get("OTP:" + email);
        return otp.equals(cachedOtp);
    }

    @Override
    public void clearOtp(String email) {
        // Delete the cached OTP for the given email
        redisTemplate.delete("OTP:" + email);
    }
}
