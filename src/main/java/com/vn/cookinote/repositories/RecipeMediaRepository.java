package com.vn.cookinote.repositories;

import com.vn.cookinote.models.RecipeMedia;
import com.vn.cookinote.models.keys.RecipeMediaKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RecipeMediaRepository extends JpaRepository<RecipeMedia, RecipeMediaKey> {
}
