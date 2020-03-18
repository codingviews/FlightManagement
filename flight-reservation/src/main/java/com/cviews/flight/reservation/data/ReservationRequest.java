package com.cviews.flight.reservation.data;

import java.util.Objects;
import java.util.StringJoiner;

public class ReservationRequest {
    private Long flightId;
    private String passengerFirstName;
    private String passengerLastName;
    private String passengerEmail;
    private String passengerPhone;
    private String nameOnTheCard;
    private String cardNumber;
    private String expiryMonth;
    private String expiryYear;
    private String cvCode;

    public Long getFlightId() {
        return flightId;
    }

    public void setFlightId(Long flightId) {
        this.flightId = flightId;
    }

    public String getPassengerFirstName() {
        return passengerFirstName;
    }

    public void setPassengerFirstName(String passengerFirstName) {
        this.passengerFirstName = passengerFirstName;
    }

    public String getPassengerLastName() {
        return passengerLastName;
    }

    public void setPassengerLastName(String passengerLastName) {
        this.passengerLastName = passengerLastName;
    }

    public String getPassengerEmail() {
        return passengerEmail;
    }

    public void setPassengerEmail(String passengerEmail) {
        this.passengerEmail = passengerEmail;
    }

    public String getPassengerPhone() {
        return passengerPhone;
    }

    public void setPassengerPhone(String passengerPhone) {
        this.passengerPhone = passengerPhone;
    }

    public String getNameOnTheCard() {
        return nameOnTheCard;
    }

    public void setNameOnTheCard(String nameOnTheCard) {
        this.nameOnTheCard = nameOnTheCard;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getExpiryMonth() {
        return expiryMonth;
    }

    public void setExpiryMonth(String expiryMonth) {
        this.expiryMonth = expiryMonth;
    }

    public String getExpiryYear() {
        return expiryYear;
    }

    public void setExpiryYear(String expiryYear) {
        this.expiryYear = expiryYear;
    }

    public String getCvCode() {
        return cvCode;
    }

    public void setCvCode(String cvCode) {
        this.cvCode = cvCode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ReservationRequest that = (ReservationRequest) o;
        return flightId.equals(that.flightId) &&
                Objects.equals(passengerFirstName, that.passengerFirstName) &&
                Objects.equals(passengerLastName, that.passengerLastName) &&
                Objects.equals(passengerEmail, that.passengerEmail) &&
                Objects.equals(passengerPhone, that.passengerPhone) &&
                Objects.equals(nameOnTheCard, that.nameOnTheCard) &&
                Objects.equals(cardNumber, that.cardNumber) &&
                Objects.equals(expiryMonth, that.expiryMonth) &&
                Objects.equals(expiryYear, that.expiryYear) &&
                Objects.equals(cvCode, that.cvCode);
    }

    @Override
    public int hashCode() {
        return Objects.hash(flightId, passengerFirstName, passengerLastName, passengerEmail, passengerPhone, nameOnTheCard, cardNumber, expiryMonth, expiryYear, cvCode);
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", ReservationRequest.class.getSimpleName() + "[", "]")
                .add("flightId=" + flightId)
                .add("passengerFirstName='" + passengerFirstName + "'")
                .add("passengerLastName='" + passengerLastName + "'")
                .add("passengerEmail='" + passengerEmail + "'")
                .add("passengerPhone='" + passengerPhone + "'")
                .add("nameOnTheCard='" + nameOnTheCard + "'")
                .add("cardNumber='" + cardNumber + "'")
                .add("expiryMonth='" + expiryMonth + "'")
                .add("expiryYear='" + expiryYear + "'")
                .add("cvCode='" + cvCode + "'")
                .toString();
    }
}
