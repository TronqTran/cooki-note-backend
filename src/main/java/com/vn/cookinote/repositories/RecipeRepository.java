package com.vn.cookinote.repositories;

import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.models.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Repository
public interface RecipeRepository extends JpaRepository<Recipe, Long> {
    Page<Recipe> findByIsDeletedAndIsPublic(Boolean isDeleted, Boolean isPublic, Pageable pageable);

    @Query("""
    SELECT DISTINCT r FROM Recipe r
    LEFT JOIN r.category c
    LEFT JOIN r.ingredients ri
    LEFT JOIN ri.ingredient i
    WHERE LOWER(r.title) LIKE LOWER(CONCAT('%', :keyword, '%'))
       OR LOWER(r.description) LIKE LOWER(CONCAT('%', :keyword, '%'))
       OR LOWER(c.name) LIKE LOWER(CONCAT('%', :keyword, '%'))
       OR LOWER(i.name) LIKE LOWER(CONCAT('%', :keyword, '%'))
    """)
    Page<Recipe> searchByKeyword(@Param("keyword") String keyword, Pageable pageable);

    @Query(value = """
    SELECT r.*,
           MAX(ts_rank_cd(r.search_vector, plainto_tsquery('simple', vn_unaccent(:keyword))) +
               ts_rank_cd(i.search_vector, plainto_tsquery('simple', vn_unaccent(:keyword)))) AS rank
    FROM recipes r
             JOIN recipe_ingredients ri ON r.recipe_id = ri.recipe_id
             JOIN ingredients i ON ri.ingredient_id = i.ingredient_id
    WHERE (r.search_vector @@ plainto_tsquery('simple', vn_unaccent(:keyword))
        OR i.search_vector @@ plainto_tsquery('simple', vn_unaccent(:keyword)))
        AND r.is_deleted = false
        AND r.is_public = true
    GROUP BY r.recipe_id
    ORDER BY rank DESC;
    """,
            nativeQuery = true)
    Page<Recipe> fullTextSearch(@Param("keyword") String keyword, Pageable pageable);

    Optional<Recipe> findByIsDeletedAndIsPublicAndId(Boolean isDeleted, Boolean isPublic, Long id);

    Page<Recipe> findByIsDeletedAndIsPublicAndIdIn(Boolean isDeleted, Boolean isPublic, Collection<Long> ids, Pageable pageable);

    Page<Recipe> findByIsDeletedAndUser(Boolean isDeleted, User user, Pageable pageable);

    Page<Recipe> findByIsDeletedAndIsPublicAndCategoryId(Boolean isDeleted, Boolean isPublic, Long categoryId, Pageable pageable);

    Page<Recipe> findByIsDeletedAndIsPublicAndUserId(Boolean isDeleted, Boolean isPublic, Long userId, Pageable pageable);

    List<Recipe> findByIsDeletedAndUserAndCreatedAtBetween(Boolean isDeleted, User user, LocalDateTime createdAtAfter, LocalDateTime createdAtBefore, Sort sort);
    List<Recipe> findByIsDeletedAndIsPublicAndUserAndCreatedAtBetween(Boolean isDeleted, Boolean isPublic, User user, LocalDateTime createdAtAfter, LocalDateTime createdAtBefore, Sort sort);
    List<Recipe> findByIsDeletedAndIsPublicAndCreatedAtBetween(Boolean isDeleted, Boolean isPublic, LocalDateTime createdAtAfter, LocalDateTime createdAtBefore, Sort sort);

    Page<Recipe> findByIsDeleted(Boolean isDeleted, Pageable pageable);
}
