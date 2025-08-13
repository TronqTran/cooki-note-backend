package com.vn.cookinote.models;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.vn.cookinote.enums.Role;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(
        name = "users",
        indexes = {
                @Index(name = "idx_user_email", columnList = "email"),
                @Index(name = "idx_user_username", columnList = "username")
        }
)
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Email is unique and not null
    @Column(nullable = false, unique = true, length = 255)
    private String email;

    // Password is stored encrypted
    @Column(length = 255)
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY) // Do not expose password in JSON responses
    private String password;

    // Username is unique and has a maximum length
    @Column(unique = true, length = 50)
    private String username;

    @Column(length = 50)
    private String firstName;

    @Column(length = 50)
    private String lastName;

    @Column(length = 500)
    private String biography;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 20)
    private Role role = Role.USER;

    // OAuth2/Social login
    @Column(length = 50)
    private String provider;     // GOOGLE, FACEBOOK, GITHUB...
    @Column(length = 100)
    private String providerId;   // ID from provider

    // Avatar
    @Column(length = 500)
    private String avatarUrl;
    @Column(length = 255)
    private String avatarPublicId; // ID for cloud storage (e.g., Cloudinary)
}
