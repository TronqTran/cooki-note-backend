package com.vn.cookinote.security;

import com.vn.cookinote.services.TokenBlacklistService;
import com.vn.cookinote.utils.JwtUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
@Slf4j
public class CustomLogoutHandler implements LogoutHandler {
    private final JwtUtil jwtUtil;
    private final TokenBlacklistService tokenBlacklistService;

    @Override
    public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
        String accessToken = request.getHeader("Authorization");
        if (accessToken == null || !accessToken.startsWith("Bearer ")) {
            return;
        }
        accessToken = accessToken.substring(7); // Remove "Bearer " prefix

        long expirationSeconds = jwtUtil.getExpirationFromToken(accessToken);
        tokenBlacklistService.blacklistToken(accessToken, expirationSeconds);


        SecurityContextHolder.clearContext();
        log.info(">>> [JWT] CustomLogoutHandler logout is called");
    }
}
