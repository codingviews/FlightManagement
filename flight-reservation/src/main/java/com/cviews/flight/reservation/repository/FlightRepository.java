package com.cviews.flight.reservation.repository;

import com.cviews.flight.reservation.model.Flight;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

public interface FlightRepository extends JpaRepository<Flight, Long> {
    @Query("from Flight where departureCity=:departureCity and arrivalCity=:arrivalCity and dateOfDeparture=:dateOfDeparture")
    List<Flight> findFlight(@Param("departureCity") String fromCity, @Param("arrivalCity") String toCity, @Param("dateOfDeparture") Date departureDate);
}
