package com.cviews.flight.reservation.repository;

import com.cviews.flight.reservation.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
