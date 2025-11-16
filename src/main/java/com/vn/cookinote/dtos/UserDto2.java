package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.Gender;
import com.vn.cookinote.enums.Status;
import com.vn.cookinote.models.User;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Builder
public record UserDto2(Long id, String username, String firstName, String lastName, LocalDate dateOfBirth,
                       Gender gender, String biography, String provider, List<UserMediaDto> medias, Status status,
                       LocalDateTime createdAt) implements Serializable {

    public static UserDto2 fromEntity(User user) {
        if (user == null) {
            return null;
        }
        return UserDto2.builder()
                .id(user.getId())
                .username(user.getUsername())
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .dateOfBirth(user.getDateOfBirth())
                .gender(user.getGender())
                .biography(user.getBiography())
                .provider(user.getProvider())
                .medias(UserMediaDto.fromEntities(user.getMedias()))
                .status(user.getStatus())
                .createdAt(user.getCreatedAt())
                .build();
    }

    public static List<UserDto2> fromEntities(List<User> users) {
        if (users == null) {
            return null;
        }
        return users.stream().map(UserDto2::fromEntity).toList();
    }
}