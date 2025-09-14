package com.vn.cookinote.repositories;

import com.vn.cookinote.models.Recipe;
import com.vn.cookinote.models.RecipeLike;
import com.vn.cookinote.models.User;
import com.vn.cookinote.models.keys.RecipeLikeKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface RecipeLikeRepository extends JpaRepository<RecipeLike, RecipeLikeKey> {

    Optional<RecipeLike> findById(RecipeLikeKey recipeLikeKey);

    List<RecipeLike> findByUser(User user);

    List<RecipeLike> findByUserId(Long userId);

    Optional<RecipeLike> findByRecipe(Recipe recipe);
}
