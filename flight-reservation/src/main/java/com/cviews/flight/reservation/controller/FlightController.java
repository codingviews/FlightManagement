package com.cviews.flight.reservation.controller;

import com.cviews.flight.reservation.model.Flight;
import com.cviews.flight.reservation.repository.FlightRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;

@Controller
public class FlightController {
    private final FlightRepository flightRepository;

    @Autowired
    public FlightController(FlightRepository flightRepository) {
        this.flightRepository = flightRepository;
    }

    public String findFlights(@RequestParam("fromCity") String fromCity, @RequestParam("toCity") String toCity, @RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date departureDate, ModelMap modelMap) {
        List<Flight> flights = flightRepository.findFlight(fromCity, toCity, departureDate);
        modelMap.addAttribute("flights", flights);
        return "flights/displayFlights";
    }
}
