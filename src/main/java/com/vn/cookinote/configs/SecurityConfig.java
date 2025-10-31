package com.vn.cookinote.configs;

import com.vn.cookinote.enums.Role;
import com.vn.cookinote.security.*;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.jwt.JwtDecoder;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationConverter;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import java.util.List;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity
@RequiredArgsConstructor
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http,
                                                   AuthenticationProvider authenticationProvider,
                                                   JwtAuthenticationFilter jwtAuthenticationFilter,
                                                   JwtAuthenticationConverter jwtAuthenticationConverter,
                                                   JwtDecoder jwtDecoder,
                                                   CustomAccessDeniedHandler customAccessDeniedHandler,
                                                   CustomAuthenticationEntryPoint customAuthenticationEntryPoint,
                                                   CustomOAuth2UserService customOAuth2UserService,
                                                   CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler,
                                                   CustomLogoutHandler customLogoutHandler,
                                                   CustomAuthenticationFailureHandler customAuthenticationFailureHandler,
                                                   CorsConfigurationSource corsConfigurationSource) throws Exception {
        http.csrf(AbstractHttpConfigurer::disable);
        http.cors(corsConfigurer ->
                corsConfigurer.configurationSource(corsConfigurationSource));
        http.sessionManagement(managementConfigurer ->
                managementConfigurer.sessionCreationPolicy(SessionCreationPolicy.STATELESS));
        http.authenticationProvider(authenticationProvider);
        http.authorizeHttpRequests(matcherRegistry -> matcherRegistry
                .requestMatchers("/ws/**").permitAll()
                .requestMatchers("/api/v1/auth/**").permitAll()
                .requestMatchers("api/v1/email/**", "api/v1/users/reset-password").permitAll()
                .requestMatchers("/api/v1/hello/**").permitAll()
                .requestMatchers("/api/v1/admin/**").hasRole(Role.ADMIN.name())
                .anyRequest().authenticated()
        );
        http.addFilterBefore(jwtAuthenticationFilter, UsernamePasswordAuthenticationFilter.class);
        http.oauth2ResourceServer(serverConfigurer ->
                serverConfigurer
                        .jwt(jwtConfigurer -> jwtConfigurer
                                .jwtAuthenticationConverter(jwtAuthenticationConverter)
                                .decoder(jwtDecoder))
                        .accessDeniedHandler(customAccessDeniedHandler)
                        .authenticationEntryPoint(customAuthenticationEntryPoint)
        );
        http.oauth2Login(loginConfigurer ->
                loginConfigurer
                        .userInfoEndpoint(endpointConfig -> endpointConfig
                                .userService(customOAuth2UserService)
                                .oidcUserService(customOAuth2UserService::loadUser))
                        .authorizationEndpoint(endpointConfig ->
                                endpointConfig.baseUri("/api/v1/oauth2/authorize"))
                        .redirectionEndpoint(endpointConfig ->
                                endpointConfig.baseUri("/api/v1/oauth2/callback/*"))
                        .failureHandler(customAuthenticationFailureHandler)
                        .successHandler(customAuthenticationSuccessHandler)
        );
        http.logout(logoutConfigurer ->
                logoutConfigurer
                        .logoutUrl("/api/v1/auth/logout")
                        .addLogoutHandler(customLogoutHandler)
                        .logoutSuccessHandler((request, response, authentication) -> SecurityContextHolder.clearContext())
        );

        return http.build();
    }

}
