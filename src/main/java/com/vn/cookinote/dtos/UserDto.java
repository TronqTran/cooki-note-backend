package com.vn.cookinote.dtos;

import com.vn.cookinote.enums.Gender;
import com.vn.cookinote.models.User;
import lombok.Builder;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

@Builder
public record UserDto(Long id, String email, String username, String firstName, String lastName, LocalDate dateOfBirth,
                      Gender gender, String biography, List<FollowingDto> followings,
                      List<FollowerDto> followers, List<UserMediaDto> medias) implements Serializable {
    public static UserDto fromEntity(User user) {
        if (user == null) return null;
        return UserDto.builder()
                .id(user.getId())
                .email(user.getEmail())
                .username(user.getUsername())
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .biography(user.getBiography())
                .dateOfBirth(user.getDateOfBirth())
                .gender(user.getGender())
                .followings(FollowingDto.fromEntities(user.getFollowing()))
                .followers(FollowerDto.fromEntities(user.getFollowers()))
                .medias(UserMediaDto.fromEntities(user.getMedias()))
                .build();
    }
}