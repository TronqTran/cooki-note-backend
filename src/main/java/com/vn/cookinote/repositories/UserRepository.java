package com.vn.cookinote.repositories;

import com.vn.cookinote.enums.Status;
import com.vn.cookinote.models.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);

    Boolean existsByEmail(String email);

    @Query(value = """
    SELECT * FROM users WHERE username = unaccent(:username)
    """, nativeQuery = true)
    User existsByUsername(String username);

    @Query(value = """
        SELECT u FROM User u
        WHERE u.status = 'ACTIVE'
        AND LOWER(u.username) LIKE LOWER(CONCAT('%', :username, '%'))
        """)
    Iterable<User> searchByUsernameActive(@Param("username") String username);

    @Query(value = """
        SELECT u FROM User u
        WHERE (u.status = 'ACTIVE' OR u.status = 'BANNED')
        AND LOWER(u.username) LIKE LOWER(CONCAT('%', :username, '%'))
        """)
    Iterable<User> findByUsername(@Param("username") String username);


    Page<User> findAllByStatusOrStatus(Status status, Status status1, Pageable pageable);
}
