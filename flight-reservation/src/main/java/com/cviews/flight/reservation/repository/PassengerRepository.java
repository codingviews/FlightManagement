package com.cviews.flight.reservation.repository;

import com.cviews.flight.reservation.model.Passenger;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {
}
