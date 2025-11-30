package com.vn.cookinote.services.impl;

import com.vn.cookinote.services.OtpService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Random;
import java.util.concurrent.TimeUnit;

@Service
@RequiredArgsConstructor
public class OtpServiceImpl implements OtpService {

    private final RedisTemplate<String, String> redisTemplate;
    private static final long EXPIRE_MINUTES = 5;
    private static final long DAILY_LIMIT = 5;
    private static final long FAIL_LIMIT = 3;

    private String otpKey(String email) {
        return "OTP:" + email;
    }

    private String reqKey(String email) {
        return "OTP:REQ:" + email;
    }

    private String failKey(String email) {
        return "OTP:FAIL:" + email;
    }

    private long secondsUntilEndOfDay() {
        ZonedDateTime now = ZonedDateTime.now(ZoneId.systemDefault());
        ZonedDateTime nextMidnight = now.plusDays(1).toLocalDate().atStartOfDay(now.getZone());
        return Duration.between(now, nextMidnight).getSeconds();
    }

    @Override
    public String generateOtp(String email) {
        if (email == null) return null;

        String rk = reqKey(email);
        Long reqCount = redisTemplate.opsForValue().increment(rk);
        if (reqCount != null && reqCount == 1) {
            // set expiry to the end of the day so the counter resets daily
            redisTemplate.expire(rk, secondsUntilEndOfDay(), TimeUnit.SECONDS);
        }

        if (reqCount != null && reqCount > DAILY_LIMIT) {
            // revert increment and do not create OTP
            redisTemplate.opsForValue().decrement(rk);
            return null;
        }

        // Generate a random 6-digit number
        String otp = String.valueOf(new Random().nextInt(900000) + 100000); // 6 digits
        redisTemplate.opsForValue().set(otpKey(email), otp, EXPIRE_MINUTES, TimeUnit.MINUTES);
        // ensure the fail counter will expire with an OTP window if created later on the first fail
        return otp;
    }

    @Override
    public boolean validateOtp(String email, String otp) {
        if (email == null || otp == null) return false;

        String cachedOtp = redisTemplate.opsForValue().get(otpKey(email));
        if (cachedOtp == null) return false;

        if (otp.equals(cachedOtp)) {
            // successful validation -> clear otp and fail counter
            clearOtp(email);
            return true;
        }

        // wrong otp -> increment fail counter
        String fk = failKey(email);
        Long fails = redisTemplate.opsForValue().increment(fk);
        if (fails != null && fails == 1) {
            // align fail counter TTL with OTP TTL
            redisTemplate.expire(fk, EXPIRE_MINUTES, TimeUnit.MINUTES);
        }

        if (fails != null && fails >= FAIL_LIMIT) {
            // remove the OTP and fail counter after too many failures
            redisTemplate.delete(otpKey(email));
            redisTemplate.delete(fk);
        }

        return false;
    }

    @Override
    public void clearOtp(String email) {
        if (email == null) return;
        redisTemplate.delete(otpKey(email));
        redisTemplate.delete(failKey(email));
    }
}
