package com.vn.cookinote.repositories;

import com.vn.cookinote.models.UserMedia;
import com.vn.cookinote.models.keys.UserMediaKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMediaRepository extends JpaRepository<UserMedia, UserMediaKey> {
}
