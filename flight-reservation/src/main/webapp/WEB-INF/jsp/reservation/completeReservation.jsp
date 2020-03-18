<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../include.jsp" />
    <meta charset="UTF-8">
    <title>Complete Reservation</title>
</head>
<body>

<nav class="navbar navbar-light bg-light">
    <span class="navbar-brand mb-0 h1">Complete Reservation</span>
</nav>

<div class="container">
    <div class="form-group row">
        <label for="operatingAirlines" class="col-sm-2 col-form-label">Operating Airlines</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="operatingAirlines" value="${flight.operatingAirlines}" placeholder="Operating Airlines">
        </div>
    </div>
    <div class="form-group row">
        <label for="departureCity" class="col-sm-2 col-form-label">Departure City</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="departureCity" value="${flight.departureCity}" placeholder="Departure City">
        </div>
    </div>
    <div class="form-group row">
        <label for="arrivalCity" class="col-sm-2 col-form-label">Arrival City</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="arrivalCity" value="${flight.arrivalCity}" placeholder="Arrival City">
        </div>
    </div>
</div>

<form action="completeReservation" method="post">
    <div class="container">
        <div class="panel-heading">
            <h3 class="panel-title">
                Passenger Details
            </h3>
        </div>
    <div class="form-group row-cols-2">
        <label for="passengerFirstName" class="col-sm-2 col-form-label">Passenger First Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="passengerFirstName" name="passengerFirstName" placeholder="Passenger First Name">
        </div>
    </div>
    <div class="form-group row-cols-2">
        <label for="passengerLastName" class="col-sm-2 col-form-label">Passenger Last Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="passengerLastName" name="passengerLastName" placeholder="Passenger Last Name">
        </div>
    </div>
    <div class="form-group row-cols-2">
        <label for="passengerEmail" class="col-sm-2 col-form-label">Passenger Email</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="passengerEmail" name="passengerEmail" placeholder="Passenger Email">
        </div>
    </div>
    <div class="form-group row-cols-2">
        <label for="passengerPhone" class="col-sm-2 col-form-label">Passenger Phone</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="passengerPhone" name="passengerPHone" placeholder="Passenger Phone">
        </div>
    </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            Payment Details
                        </h3>
                        <div class="checkbox pull-right">
                            <label>
                                <input type="checkbox" />
                                Remember
                            </label>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="nameOnTheCard">
                                NAME ON CARD</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="nameOnTheCard" name="nameOnTheCard" placeholder="Name of Card" required autofocus />
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            </div>
                        </div>
                            <div class="form-group">
                                <label for="cardNumber">
                                    CARD NUMBER</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" id="cardNumber" name="cardNumber" placeholder="Valid Card Number"
                                           required autofocus />
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-7 col-md-7">
                                    <div class="form-group">
                                        <label for="expiryMonth">
                                            EXPIRY DATE</label>
                                        <div class="col-xs-6 col-lg-6 pl-ziro">
                                            <input type="text" class="form-control" id="expiryMonth" name="expiryMonth" placeholder="MM" required />
                                        </div>
                                        <div class="col-xs-6 col-lg-6 pl-ziro">
                                            <input type="text" class="form-control" id="expiryYear" name="expiryYear" placeholder="YY" required /></div>
                                    </div>
                                </div>
                                <div class="col-xs-5 col-md-5 pull-right">
                                    <div class="form-group">
                                        <label for="cvCode">
                                            CV CODE</label>
                                        <input type="password" class="form-control" id="cvCode" name="cvCode" placeholder="CV" required />
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="#"><span class="badge pull-right"><span class="glyphicon glyphicon-usd"></span>4200</span> Final Payment</a>
                    </li>
                </ul>
                <br/>
                <div class="col-md-12">
                    <input type="hidden" name="flightId" value="${flight.id}"/>
                    <input type="submit" class="form-control input-sm fvalue" id="submit" value="Confirm"/>
                    <div class="alert alert-danger">${msg}</div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>