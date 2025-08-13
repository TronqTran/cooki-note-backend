package com.vn.cookinote;

import com.vn.cookinote.enums.Role;
import com.vn.cookinote.models.User;
import com.vn.cookinote.repositories.UserRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootApplication
public class CookiNoteBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(CookiNoteBackendApplication.class, args);
	}
    @Bean
    public CommandLineRunner commandLineRunner(PasswordEncoder passwordEncoder, UserRepository userRepository) {
        return args -> {
            User admin = User.builder()
                    .email("cookinote.contact@gmail.com")
                    .password(passwordEncoder.encode("admin"))
                    .username("admin")
                    .firstName("Admin")
                    .lastName("Cookinote")
                    .provider("LOCAL")
                    .role(Role.ADMIN)
                    .build();
            if (!userRepository.existsByEmail(admin.getEmail())){
                userRepository.save(admin);
            }
        };
    }

}
