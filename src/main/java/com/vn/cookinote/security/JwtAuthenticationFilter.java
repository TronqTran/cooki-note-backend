package com.vn.cookinote.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiCode;
import com.vn.cookinote.services.TokenBlacklistService;
import com.vn.cookinote.utils.JwtUtil;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.server.resource.web.BearerTokenResolver;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.time.Instant;

@Component
@RequiredArgsConstructor
@Slf4j
public class JwtAuthenticationFilter extends OncePerRequestFilter {
    private final BearerTokenResolver bearerTokenResolver;
    private final JwtUtil jwtUtil;
    private final CustomUserDetailsService customUserDetailsService;
    private final ObjectMapper mapper;
    private final TokenBlacklistService tokenBlacklistService;

    @Override
    protected void doFilterInternal(@NonNull HttpServletRequest request,
                                    @NonNull HttpServletResponse response,
                                    @NonNull FilterChain filterChain) throws ServletException, IOException {

        // Skip filtering for authentication endpoints
        String servletPath = request.getServletPath();
        if (servletPath != null && servletPath.startsWith("/api/v1/auth")) {
            filterChain.doFilter(request, response);
            return;
        }

        final String jwt = bearerTokenResolver.resolve(request);
        if (jwt == null || jwt.isEmpty()) {
            // Proceed with the filter chain if no JWT is found
            filterChain.doFilter(request, response);
            return;
        }

        // Check if the JWT is blocklisted
        if (tokenBlacklistService.isTokenBlacklisted(jwt)) {
            writeErrorResponse(response, "JWT token is blacklisted");
        }

        try {
            log.info(">>> [JWT] JwtAuthenticationFilter doFilterInternal is called");

            String userEmail = jwtUtil.getSubjectFromToken(jwt);
            if (userEmail != null && SecurityContextHolder.getContext().getAuthentication() == null) {
                UserDetails userDetails = customUserDetailsService.loadUserByUsername(userEmail);
                if (!jwtUtil.isTokenExpired(jwt)) {
                    UsernamePasswordAuthenticationToken authToken =
                            new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
                    authToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                    SecurityContextHolder.getContext().setAuthentication(authToken);
                }
            }
        } catch (Exception e) {
            // Handle any exceptions during token validation or authentication
            writeErrorResponse(response, "Invalid JWT token: " + e.getMessage());
            return;
        }

        // Always continue the filter chain if no error response has been written
        filterChain.doFilter(request, response);
    }

    private void writeErrorResponse(HttpServletResponse response, String description) throws IOException {
        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        response.setContentType("application/json; charset=UTF-8");
        ApiResponse<Object> errorResponse = ApiResponse.builder()
                .code(ApiCode.UNAUTHORIZED.getCode())
                .message(ApiCode.UNAUTHORIZED.getMessage())
                .description(description)
                .timestamp(Instant.now())
                .build();

        response.getWriter().write(mapper.writeValueAsString(errorResponse));
    }
}
