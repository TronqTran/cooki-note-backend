package com.vn.cookinote.repositories;

import com.vn.cookinote.models.Category;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
    Optional<Category> findByName(String name);

    boolean existsByName(String name);

    boolean existsByNameAndId(String name, Long id);

    List<Category> findAllByIsDeleted(Boolean isDeleted, Sort sort);

    @Query(value = """
    SELECT c.* FROM categories c
    WHERE c.search_vector @@ plainto_tsquery('simple', vn_unaccent(:name))
    """, nativeQuery = true)
    List<Category> findByNameLike(String name);
}
