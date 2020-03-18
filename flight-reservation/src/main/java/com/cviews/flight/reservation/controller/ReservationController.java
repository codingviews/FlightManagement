package com.cviews.flight.reservation.controller;

import com.cviews.flight.reservation.data.ReservationRequest;
import com.cviews.flight.reservation.model.Flight;
import com.cviews.flight.reservation.model.Reservation;
import com.cviews.flight.reservation.repository.FlightRepository;
import com.cviews.flight.reservation.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReservationController {
    private final FlightRepository flightRepository;
    private final ReservationService reservationService;

    @Autowired
    public ReservationController(FlightRepository flightRepository, ReservationService reservationService) {
        this.flightRepository = flightRepository;
        this.reservationService = reservationService;
    }

    @RequestMapping("/showCompleteReservation")
    public String showCompleteReservation(@RequestParam("flightId") Long flightId, ModelMap modelMap) {
        Flight flight = flightRepository.findById(flightId).orElse(new Flight());
        modelMap.addAttribute("flight", flight);
        return "reservation/completeReservation";
    }

    @RequestMapping(value="/completeReservation", method = RequestMethod.POST)
    public String completeReservation(ReservationRequest reservationRequest, ModelMap modelMap) {
        Reservation reservation = reservationService.bookFlight(reservationRequest);
        modelMap.addAttribute("msg", "Reservation created successfully and the id is[" + reservation.getId() + "]");
        return "reservation/reservationConfirmation";
    }
}
