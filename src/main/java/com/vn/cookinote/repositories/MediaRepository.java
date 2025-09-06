package com.vn.cookinote.repositories;

import com.vn.cookinote.models.Media;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface MediaRepository extends JpaRepository<Media, Long> {
    boolean existsByPublicId(String publicId);

    Optional<Media> findByPublicId(String publicId);
}
