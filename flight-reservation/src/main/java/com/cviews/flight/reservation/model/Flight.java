package com.cviews.flight.reservation.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;
import java.util.StringJoiner;

@Entity
@Table(name = "FLIGHT")
public class Flight extends AbstractEntity {
    @Column(name = "FLIGHT_NUMBER")
    private String flightNumber;
    @Column(name = "OPERATING_AIRLINES")
    private String operatingAirlines;
    @Column(name = "DEPARTURE_CITY")
    private String departureCity;
    @Column(name = "ARRIVAL_CITY")
    private String arrivalCity;
    @Column(name = "DATE_OF_DEPARTURE")
    private LocalDate dateOfDeparture;
    @Column(name = "ESTIMATED_DEPARTURE_TIME")
    private LocalDateTime estimatedDepartureTime;

    public String getFlightNumber() {
        return flightNumber;
    }

    public void setFlightNumber(String flightNumber) {
        this.flightNumber = flightNumber;
    }

    public String getOperatingAirlines() {
        return operatingAirlines;
    }

    public void setOperatingAirlines(String operatingAirlines) {
        this.operatingAirlines = operatingAirlines;
    }

    public String getDepartureCity() {
        return departureCity;
    }

    public void setDepartureCity(String departureCity) {
        this.departureCity = departureCity;
    }

    public String getArrivalCity() {
        return arrivalCity;
    }

    public void setArrivalCity(String arrivalCity) {
        this.arrivalCity = arrivalCity;
    }

    public LocalDate getDateOfDeparture() {
        return dateOfDeparture;
    }

    public void setDateOfDeparture(LocalDate dateOfDeparture) {
        this.dateOfDeparture = dateOfDeparture;
    }

    public LocalDateTime getEstimatedDepartureTime() {
        return estimatedDepartureTime;
    }

    public void setEstimatedDepartureTime(LocalDateTime estimatedDepartureTime) {
        this.estimatedDepartureTime = estimatedDepartureTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Flight flight = (Flight) o;
        return Objects.equals(id, flight.id) &&
                Objects.equals(flightNumber, flight.flightNumber) &&
                Objects.equals(operatingAirlines, flight.operatingAirlines) &&
                Objects.equals(departureCity, flight.departureCity) &&
                Objects.equals(arrivalCity, flight.arrivalCity) &&
                Objects.equals(dateOfDeparture, flight.dateOfDeparture) &&
                Objects.equals(estimatedDepartureTime, flight.estimatedDepartureTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, flightNumber, operatingAirlines, departureCity, arrivalCity, dateOfDeparture, estimatedDepartureTime);
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Flight.class.getSimpleName() + "[", "]")
                .add("flightNumber='" + flightNumber + "'")
                .add("operatingAirlines='" + operatingAirlines + "'")
                .add("departureCity='" + departureCity + "'")
                .add("arrivalCity='" + arrivalCity + "'")
                .add("dateOfDeparture=" + dateOfDeparture)
                .add("estimatedDepartureTime=" + estimatedDepartureTime)
                .add("id=" + id)
                .toString();
    }
}
