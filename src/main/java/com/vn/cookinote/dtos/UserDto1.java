package com.vn.cookinote.dtos;

import com.vn.cookinote.models.User;
import lombok.Builder;

import java.io.Serializable;
import java.util.List;

@Builder
public record UserDto1(Long id, String email, String firstName, String lastName, List<UserMediaDto> medias) implements Serializable {

    public static UserDto1 fromEntity(User user) {
        if (user == null) return null;
        return UserDto1.builder()
                .id(user.getId())
                .email(user.getEmail())
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .medias(UserMediaDto.fromEntities(user.getMedias()))
                .build();
    }

    public static List<UserDto1> fromEntities(List<User> users) {
        if (users == null) return null;
        return users.stream().map(UserDto1::fromEntity).toList();
    }

}