package com.vn.cookinote.security;

import com.vn.cookinote.enums.MediaType;
import com.vn.cookinote.enums.ProfileMediaType;
import com.vn.cookinote.enums.Role;
import com.vn.cookinote.enums.Status;
import com.vn.cookinote.models.Media;
import com.vn.cookinote.models.User;
import com.vn.cookinote.models.UserMedia;
import com.vn.cookinote.models.keys.UserMediaKey;
import com.vn.cookinote.repositories.MediaRepository;
import com.vn.cookinote.repositories.UserMediaRepository;
import com.vn.cookinote.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.client.oidc.userinfo.OidcUserRequest;
import org.springframework.security.oauth2.client.oidc.userinfo.OidcUserService;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.oidc.user.DefaultOidcUser;
import org.springframework.security.oauth2.core.oidc.user.OidcUser;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;

@Component
@RequiredArgsConstructor
@Slf4j
public class CustomOAuth2UserService extends DefaultOAuth2UserService {

    private final UserRepository userRepository;
    private final OidcUserService oidcUserService = new OidcUserService();
    private final MediaRepository mediaRepository;
    private final UserMediaRepository userMediaRepository;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) {
        log.info(">>> [OAuth2] CustomOAuth2UserService loadUser is called");
        OAuth2User oauth2User = super.loadUser(userRequest);
        return processUser(userRequest, oauth2User);
    }

    public OidcUser loadUser(OidcUserRequest userRequest) {
        log.info(">>> [OIDC] CustomOAuth2UserService loadUser is called");
        OidcUser oidcUser = oidcUserService.loadUser(userRequest);
        return (OidcUser) processUser(userRequest, oidcUser);
    }

    private OAuth2User processUser(OAuth2UserRequest userRequest, OAuth2User oauth2User) {
        String registrationId = userRequest.getClientRegistration().getRegistrationId();

        // Fetch common attributes
        String providerId = oauth2User.getAttribute("sub");
        String email = oauth2User.getAttribute("email");
        String firstName = oauth2User.getAttribute("given_name");
        String lastName = oauth2User.getAttribute("family_name");
        String picture = oauth2User.getAttribute("picture");

        if (oauth2User instanceof OidcUser oidcUser) {
            providerId = oidcUser.getIdToken().getSubject();
            // OIDC may still hide email if scope not granted
            email = oidcUser.getEmail();
        }

        // Ensure we have a stable identifier
        if (isBlank(providerId)) {
            // Without providerId we cannot safely identify the user
            throw new IllegalStateException("OAuth2 provider did not supply a subject (providerId).");
        }

        // Prefer real email; otherwise synthesize one to satisfy not-null constraint
        String resolvedEmail = !isBlank(email)
                ? email
                : (providerId + "@" + registrationId.toLowerCase() + ".oauth.local");

        // Try to find by email if present; otherwise we could consider providerId-based lookup (repository extension)
        User user = userRepository.findByEmail(resolvedEmail).orElseGet(() -> {
            // 1) Create and save the user FIRST to get an ID
            User newUser = new User();
            newUser.setEmail(resolvedEmail);
            newUser.setUsername(resolvedEmail);
            newUser.setProvider(registrationId.toUpperCase());
            newUser.setFirstName(firstName);
            newUser.setLastName(lastName);
            newUser.setRole(Role.USER);
            newUser.setStatus(Status.ACTIVE);

            User savedUser = userRepository.save(newUser);

            // 2) If we have a picture, create media and link it
            if (!isBlank(picture)) {
                Media avatar = Media.builder()
                        .type(MediaType.IMAGE)
                        .url(picture)
                        .publicId(picture)
                        .build();
                Media savedAvatar = mediaRepository.save(avatar);

                // 3) Link user <-> media via UserMedia now that user ID exists
                UserMedia userMedia = UserMedia.builder()
                        .id(new UserMediaKey(savedUser.getId(), savedAvatar.getId()))
                        .user(savedUser)
                        .media(savedAvatar)
                        .type(ProfileMediaType.AVATAR)
                        .build();
                userMediaRepository.save(userMedia);

                // If a User has a collection for media, reflect it
                savedUser.setMedias(List.of(userMedia));
            }

            return savedUser;
        });

        return buildOAuth2User(userRequest, user, oauth2User);
    }

    private OAuth2User buildOAuth2User(OAuth2UserRequest userRequest, User user, OAuth2User oauth2User) {
        List<SimpleGrantedAuthority> authorities =
                Collections.singletonList(new SimpleGrantedAuthority("ROLE_" + user.getRole().name()));

        // Use-provider-configured name attribute key (fallback to "sub")
        String nameAttributeKey = userRequest.getClientRegistration()
                .getProviderDetails()
                .getUserInfoEndpoint()
                .getUserNameAttributeName();
        if (isBlank(nameAttributeKey)) {
            nameAttributeKey = "sub";
        }

        if (oauth2User instanceof OidcUser oidcUser) {
            return new DefaultOidcUser(authorities, oidcUser.getIdToken(), oidcUser.getUserInfo(), nameAttributeKey);
        }
        return new DefaultOAuth2User(authorities, oauth2User.getAttributes(), nameAttributeKey);
    }

    private boolean isBlank(String s) {
        return s == null || s.trim().isEmpty();
    }
}
