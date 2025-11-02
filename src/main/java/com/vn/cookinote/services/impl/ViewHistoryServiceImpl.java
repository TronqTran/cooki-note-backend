package com.vn.cookinote.services.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vn.cookinote.dtos.RecipeDto1;
import com.vn.cookinote.services.ViewHistoryService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.Cursor;
import org.springframework.data.redis.core.ScanOptions;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ZSetOperations;
import org.springframework.stereotype.Service;

import java.nio.charset.StandardCharsets;
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

    private static final String PREFIX = "vh:"; // View history prefix
    private static final int MAX_ITEMS = 100;
    private static final Duration EXPIRE_DURATION = Duration.ofDays(30);

    @Override
    public void saveViewHistory(String email, RecipeDto1 recipe) {
        if (email == null || email.isBlank() || recipe == null) return;

        try {
            String key = PREFIX + email;
            long now = System.currentTimeMillis();
            ZSetOperations<String, String> zset = redisTemplate.opsForZSet();

            // Save recipe JSON separately
            String json = objectMapper.writeValueAsString(recipe);
            redisTemplate.opsForValue().set("recipe:" + recipe.id(), json);

            // Remove old if exists
            zset.remove(key, recipe.id().toString());

            // Add ID only
            zset.add(key, recipe.id().toString(), now);

            // Trim
            Long size = zset.size(key);
            if (size != null && size > MAX_ITEMS) {
                zset.removeRange(key, 0, size - MAX_ITEMS - 1);
            }

            redisTemplate.expire(key, EXPIRE_DURATION);

        } catch (Exception ex) {
            log.warn("Failed to save view history for {}: {}", email, ex.getMessage());
        }
    }

    @Override
    public void removeIfExists(ZSetOperations<String, String> zset, String key, Long recipeId) {
        if (recipeId == null) return;

        Set<String> existing = zset.range(key, 0, -1);
        if (existing == null || existing.isEmpty()) return;

        for (String json : existing) {
            try {
                RecipeDto1 dto = objectMapper.readValue(json, RecipeDto1.class);
                if (dto.id().equals(recipeId)) {
                    zset.remove(key, json);
                    break;
                }
            } catch (Exception ignored) {}
        }
    }

    @Override
    public List<RecipeDto1> getRecentViews(String email, int limit) {
        if (email == null || email.isBlank()) return List.of();
        String key = PREFIX + email;

        try {
            ZSetOperations<String, String> zset = redisTemplate.opsForZSet();
            Set<String> ids = zset.reverseRange(key, 0, limit - 1);
            if (ids == null || ids.isEmpty()) return List.of();

            List<RecipeDto1> result = new ArrayList<>();
            for (String id : ids) {
                String json = redisTemplate.opsForValue().get("recipe:" + id);
                if (json != null) {
                    result.add(objectMapper.readValue(json, RecipeDto1.class));
                }
            }
            return result;
        } catch (Exception ex) {
            log.warn("Failed to load view history for {}: {}", email, ex.getMessage());
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

    @Override
    public void removeRecipeFromAllRecentViews(Long recipeId) {
        if (recipeId == null) return;

        try (Cursor<byte[]> cursor = redisTemplate.getConnectionFactory()
                .getConnection()
                .scan(ScanOptions.scanOptions().match(PREFIX + "*").count(100).build())) {

            ZSetOperations<String, String> zset = redisTemplate.opsForZSet();
            while (cursor.hasNext()) {
                String key = new String(cursor.next(), StandardCharsets.UTF_8);
                zset.remove(key, recipeId.toString());
            }

            // Remove the JSON data
            redisTemplate.delete("recipe:" + recipeId);

        } catch (Exception ex) {
            log.warn("Failed to remove recipe {} from all histories: {}", recipeId, ex.getMessage());
        }
    }
}
