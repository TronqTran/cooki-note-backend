package com.vn.cookinote.services.iml;

import com.vn.cookinote.dtos.requests.AuthenticationRequest;
import com.vn.cookinote.dtos.requests.RegisterRequest;
import com.vn.cookinote.enums.Role;
import com.vn.cookinote.enums.Status;
import com.vn.cookinote.models.User;
import com.vn.cookinote.repositories.UserRepository;
import com.vn.cookinote.services.AuthenticationService;
import com.vn.cookinote.utils.JwtUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class AuthenticationServiceImpl implements AuthenticationService {
    private final UserRepository userRepository;
    private final JwtUtil jwtUtil;
    private final AuthenticationManager authenticationManager;
    private final PasswordEncoder passwordEncoder;

    @Override
    public void register(RegisterRequest registerRequest) {
        log.info("Register request: {}", registerRequest.email());

        User user = User.builder()
                .email(registerRequest.email())
                .password(passwordEncoder.encode(registerRequest.password()))
                .username(registerRequest.username())
                .firstName(registerRequest.firstName())
                .lastName(registerRequest.lastName())
                .avatarUrl("https://res.cloudinary.com/dwvgjmjuo/image/upload/v1754995759/profile_avatar/qcig6tpob98lmoyhzkss.jpg")
                .provider("LOCAL")
                .role(Role.USER)
                .status(Status.ACTIVE)
                .build();
        userRepository.save(user);
    }

    @Override
    public String authenticate(AuthenticationRequest authenticationRequest) {

        log.info("Authentication request: {}", authenticationRequest.email());

        // Authenticate the user using the provided email and password
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        authenticationRequest.email(),
                        authenticationRequest.password()
                )
        );

        // Retrieve the user from the database
        User user = userRepository.findByEmail(authenticationRequest.email())
                .orElseThrow(() -> new UsernameNotFoundException("User not found with email: " + authenticationRequest.email()));

        // Generate a JWT token for the user
        return jwtUtil.generateToken(user);
    }
}
