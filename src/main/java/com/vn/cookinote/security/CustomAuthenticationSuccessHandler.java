package com.vn.cookinote.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.vn.cookinote.dtos.responses.ApiResponse;
import com.vn.cookinote.enums.ApiStatus;
import com.vn.cookinote.models.User;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.utils.JwtUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.time.Instant;
import java.util.Map;

@Component
@RequiredArgsConstructor
@Slf4j
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
    private final JwtUtil jwtUtil;
    private final UserRepository userRepository;
    private final ObjectMapper mapper;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
        // Log the success of OAuth2 authentication
        log.info(">>> OAuth2AuthenticationSuccessHandler onAuthenticationSuccess is called");

        // Retrieve the authenticated user's details
        OAuth2User oauth2User = (OAuth2User) authentication.getPrincipal();
        String email = oauth2User.getAttribute("email");

        // Fetch the user from the database using their email
        User user = userRepository.findByEmail(email).orElseThrow(() -> new UsernameNotFoundException("User not found with email: " + email));

        // Generate access and refresh tokens for the user
        String token = jwtUtil.generateToken(user);

        // Set the HTTP response status and content type
        response.setStatus(HttpServletResponse.SC_OK);
        response.setContentType("application/json; charset=UTF-8");

        // Build the authentication response object
        ApiResponse<Object> authenticationResponse =
                ApiResponse.builder()
                        .code(ApiStatus.OK.getHttpStatus().value())
                        .message(ApiStatus.OK.getMessage())
                        .timestamp(Instant.now())
                        .data(Map.of(
                                "token", token
                        ))
                        .build();

        // Write the authentication response as JSON to the HTTP response
        mapper.registerModule(new JavaTimeModule());
        response.getWriter().write(mapper.writeValueAsString(authenticationResponse));
    }
}
