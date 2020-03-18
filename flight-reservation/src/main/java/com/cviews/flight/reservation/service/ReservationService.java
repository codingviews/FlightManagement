package com.cviews.flight.reservation.service;

import com.cviews.flight.reservation.data.ReservationRequest;
import com.cviews.flight.reservation.model.Reservation;

public interface ReservationService {
    Reservation bookFlight(ReservationRequest reservationRequest);
}
