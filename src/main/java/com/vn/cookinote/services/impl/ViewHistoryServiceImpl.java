package com.vn.cookinote.services.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vn.cookinote.dtos.RecipeDto1;
import com.vn.cookinote.services.ViewHistoryService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ZSetOperations;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
@RequiredArgsConstructor
@Slf4j
public class ViewHistoryServiceImpl implements ViewHistoryService {
    private final StringRedisTemplate redisTemplate;
    private final ObjectMapper objectMapper; // Jackson

    private static final String PREFIX = "vh:"; // view history
    private static final int MAX_ITEMS = 100;
    @Override
    public void saveViewHistory(String email, RecipeDto1 recipe) {
        if (email == null || email.isBlank() || recipe == null) return;

        try {
            String key = PREFIX + email;
            long now = System.currentTimeMillis();

            ZSetOperations<String, String> zset = redisTemplate.opsForZSet();

            // Serialize RecipeDto1 -> JSON
            String json = objectMapper.writeValueAsString(recipe);

            // if a recipe already exists in history, remove it first
            removeIfExists(zset, key, recipe.id());
            zset.add(key, json, now);

            // Trim to MAX_ITEMS
            Long size = zset.size(key);
            if (size != null && size > MAX_ITEMS) {
                zset.removeRange(key, 0, size - MAX_ITEMS - 1);
            }

            // Set expiration to 30 days
            redisTemplate.expire(key, Duration.ofDays(30));

        } catch (Exception ex) {
            log.warn("Failed to save recipe view history for {}: {}", email, ex.getMessage());
        }
    }

    @Override
    public void removeIfExists(ZSetOperations<String, String> zset, String key, Long recipeId) {
        Set<String> existing = zset.range(key, 0, -1);
        if (existing != null) {
            for (String json : existing) {
                try {
                    RecipeDto1 dto = new ObjectMapper().readValue(json, RecipeDto1.class);
                    if (dto.id().equals(recipeId)) {
                        zset.remove(key, json);
                        break;
                    }
                } catch (Exception ignored) {}
            }
        }
    }

    @Override
    public List<RecipeDto1> getRecentViews(String email, int limit) {
        if (email == null || email.isBlank()) return List.of();
        String key = PREFIX + email;

        try {
            ZSetOperations<String, String> zset = redisTemplate.opsForZSet();
            // Get items in reverse order (the most recent first)
            Set<String> jsons = zset.reverseRange(key, 0, limit - 1);
            if (jsons == null) return List.of();

            List<RecipeDto1> result = new ArrayList<>();
            for (String json : jsons) {
                try {
                    result.add(objectMapper.readValue(json, RecipeDto1.class));
                } catch (Exception ignored) {}
            }
            return result;
        } catch (Exception ex) {
            log.warn("Failed to load recipe view history for {}: {}", email, ex.getMessage());
            return List.of();
        }
    }

    @Override
    public void removeRecentViews(String email, Long recipeId) {
        if (email == null || email.isBlank() || recipeId == null) return;
        String key = PREFIX + email;

        try {
            ZSetOperations<String, String> zset = redisTemplate.opsForZSet();
            removeIfExists(zset, key, recipeId);
        } catch (Exception ex) {
            log.warn("Failed to remove recipe {} from view history for {}: {}", recipeId, email, ex.getMessage());
        }
    }
}
