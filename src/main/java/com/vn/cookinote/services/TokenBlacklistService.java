package com.vn.cookinote.services;

public interface TokenBlacklistService {
    void blacklistToken(String token, long expirationSeconds);
    boolean isTokenBlacklisted(String token);
}
