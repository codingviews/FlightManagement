package com.cviews.flight.reservation.service;

import com.cviews.flight.reservation.data.ReservationRequest;
import com.cviews.flight.reservation.model.Flight;
import com.cviews.flight.reservation.model.Passenger;
import com.cviews.flight.reservation.model.Reservation;
import com.cviews.flight.reservation.repository.FlightRepository;
import com.cviews.flight.reservation.repository.PassengerRepository;
import com.cviews.flight.reservation.repository.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Service
public class ReservationServiceImpl implements ReservationService {
    private final FlightRepository flightRepository;
    private final PassengerRepository passengerRepository;
    private final ReservationRepository reservationRepository;

    @Autowired
    public ReservationServiceImpl(FlightRepository flightRepository, PassengerRepository passengerRepository, ReservationRepository reservationRepository) {
        this.flightRepository = flightRepository;
        this.passengerRepository = passengerRepository;
        this.reservationRepository = reservationRepository;
    }

    @Override
    public Reservation bookFlight(ReservationRequest reservationRequest) {
        // Make Payment by calling a payment service
        Long flightId = reservationRequest.getFlightId();
        Flight flight = flightRepository.findById(flightId).orElse(new Flight());

        Passenger passenger = new Passenger.Builder()
                .firstName(reservationRequest.getPassengerFirstName())
                .lastName(reservationRequest.getPassengerLastName())
                .email(reservationRequest.getPassengerEmail())
                .phone(reservationRequest.getPassengerPhone())
                .build();
        Passenger savedPassenger = passengerRepository.save(passenger);

        Reservation reservation = new Reservation.Builder()
                .passenger(savedPassenger)
                .flight(flight)
                .checkedIn(Boolean.FALSE)
                .created(LocalDateTime.now())
                .build();
        return reservationRepository.save(reservation);
    }
}
