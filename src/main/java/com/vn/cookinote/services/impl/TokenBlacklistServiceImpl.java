package com.vn.cookinote.services.impl;

import com.vn.cookinote.services.TokenBlacklistService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.time.Duration;

@Service
@RequiredArgsConstructor
public class TokenBlacklistServiceImpl implements TokenBlacklistService {

    private static final String PREFIX = "bl:";
    private final StringRedisTemplate redisTemplate;

    @Override
    public void blacklistToken(String token, long expirationSeconds) {
        if (expirationSeconds <= 0) return;
        String key = PREFIX + token;
        redisTemplate.opsForValue().set(key, "true", Duration.ofSeconds(expirationSeconds));

    }

    @Override
    public boolean isTokenBlacklisted(String token) {
        if (token == null) return false;
        String key = PREFIX + token;
        return redisTemplate.hasKey(key);
    }
}
