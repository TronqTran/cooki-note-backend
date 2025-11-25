package com.vn.cookinote;

import com.vn.cookinote.enums.MediaType;
import com.vn.cookinote.enums.Role;
import com.vn.cookinote.enums.Status;
import com.vn.cookinote.models.Media;
import com.vn.cookinote.models.User;
import com.vn.cookinote.repositories.MediaRepository;
import com.vn.cookinote.repositories.UserRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import jakarta.transaction.Transactional;

import java.time.LocalDateTime;

@SpringBootApplication
public class CookiNoteBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(CookiNoteBackendApplication.class, args);
    }

}
