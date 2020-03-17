package com.cviews.flight.reservation.controller;

import com.cviews.flight.reservation.model.Flight;
import com.cviews.flight.reservation.repository.FlightRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

@Controller
public class FlightController {
    private static final Logger LOGGER = LoggerFactory.getLogger(FlightController.class);

    private final FlightRepository flightRepository;

    @Autowired
    public FlightController(FlightRepository flightRepository) {
        this.flightRepository = flightRepository;
    }

    @RequestMapping(value = "findFlights", method = RequestMethod.GET)
    public String findFlights(@RequestParam("fromCity") String fromCity, @RequestParam("toCity") String toCity, @RequestParam("departureDate") @DateTimeFormat(pattern = "yyyy-MM-d") Date departureDate, ModelMap modelMap) {
        LOGGER.info("FromCity:{}, ToCity:{}, DepartureDate:{}", fromCity, toCity, departureDate);

        LocalDate departureLocalDate = departureDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();

        List<Flight> flights = flightRepository.findFlight(fromCity, toCity, departureLocalDate);
        LOGGER.info("Flights: {}", flights);

        modelMap.addAttribute("flights", flights);
        return "flights/displayFlights";
    }
}
