package com.cviews.flight.reservation.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.time.LocalDateTime;
import java.util.Objects;
import java.util.StringJoiner;

@Entity
@Table(name = "RESERVATION")
public class Reservation extends AbstractEntity {
    @Column(name = "CHECKED_IN")
    private Boolean checkedIn;
    @Column(name = "NUMBER_OF_BAGS")
    private Integer numberOfBags;
    @OneToOne
    //@Column(name = "PASSENGER_ID")
    private Passenger passenger;
    @OneToOne
    //@Column(name = "FLIGHT_ID")
    private Flight flight;
    @Column(name = "CREATED")
    private LocalDateTime created;

    public Boolean getCheckedIn() {
        return checkedIn;
    }

    public void setCheckedIn(Boolean checkedIn) {
        this.checkedIn = checkedIn;
    }

    public Integer getNumberOfBags() {
        return numberOfBags;
    }

    public void setNumberOfBags(Integer numberOfBags) {
        this.numberOfBags = numberOfBags;
    }

    public Passenger getPassenger() {
        return passenger;
    }

    public void setPassenger(Passenger passenger) {
        this.passenger = passenger;
    }

    public Flight getFlight() {
        return flight;
    }

    public void setFlight(Flight flight) {
        this.flight = flight;
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Reservation that = (Reservation) o;
        return id.equals(that.id) &&
                Objects.equals(checkedIn, that.checkedIn) &&
                Objects.equals(numberOfBags, that.numberOfBags) &&
                Objects.equals(passenger, that.passenger) &&
                Objects.equals(flight, that.flight) &&
                Objects.equals(created, that.created);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, checkedIn, numberOfBags, passenger, flight, created);
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Reservation.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("checkedIn=" + checkedIn)
                .add("numberOfBags=" + numberOfBags)
                .add("passenger=" + passenger)
                .add("flight=" + flight)
                .add("created=" + created)
                .toString();
    }
}
