package com.cviews.flight.reservation.controller;

import com.cviews.flight.reservation.model.User;
import com.cviews.flight.reservation.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

    private final UserRepository userRepository;

    @Autowired
    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @RequestMapping("/showRegistration")
    public String showRegistrationPage() {
        return "/login/registerUser";
    }

    @RequestMapping(value = "registerUser", method = RequestMethod.POST)
    public String register(@ModelAttribute(value = "user") User user) {
        LOGGER.info("User: {}", user);

        userRepository.save(user);
        return "login/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("email") String email, @RequestParam("password") String password, ModelMap modelMap) {
        User user = userRepository.findByEmail(email);

        if (user != null && user.getPassword().equals(password)) {
            return "flights/findFlights";
        } else {
            modelMap.addAttribute("msg", "Invlid user name or password. Please try again.");
        }

        return "login/login";
    }
}
