package com.cviews.flight.reservation.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Objects;
import java.util.StringJoiner;

@Entity
@Table(name = "PASSENGER")
public class Passenger extends AbstractEntity {
    @Column(name = "FIRST_NAME")
    private String firstName;
    @Column(name = "MIDDLE_NAME")
    private String middleName;
    @Column(name = "LAST_NAME")
    private String lastName;
    @Column(name = "EMAIL")
    private String email;
    @Column(name = "PHONE")
    private String phone;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Passenger passenger = (Passenger) o;
        return id.equals(passenger.id) &&
                Objects.equals(firstName, passenger.firstName) &&
                Objects.equals(middleName, passenger.middleName) &&
                Objects.equals(lastName, passenger.lastName) &&
                Objects.equals(email, passenger.email) &&
                Objects.equals(phone, passenger.phone);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, firstName, middleName, lastName, email, phone);
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Passenger.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("firstName='" + firstName + "'")
                .add("middleName='" + middleName + "'")
                .add("lastName='" + lastName + "'")
                .add("email='" + email + "'")
                .add("phone='" + phone + "'")
                .toString();
    }
}
