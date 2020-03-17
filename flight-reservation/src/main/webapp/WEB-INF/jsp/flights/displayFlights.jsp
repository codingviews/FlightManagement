<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../include.jsp" />
    <meta charset="UTF-8">
    <title>Flights</title>
</head>
<body>

<nav class="navbar navbar-light bg-light">
    <span class="navbar-brand mb-0 h1">Flights</span>
</nav>

<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Flight#</th>
        <th scope="col">Airlines</th>
        <th scope="col">Departure City</th>
        <th scope="col">Arrival City</th>
        <th scope="col">Departure Date</th>
        <th scope="col">Estimated Departure Time</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${flights}" var="flight">
    <tr>
        <td>${flight.flightNumber}</td>
        <td>${flight.operatingAirlines}</td>
        <td>${flight.departureCity}</td>
        <td>${flight.arrivalCity}</td>
        <td>${flight.dateOfDeparture}</td>
        <td>${flight.estimatedDepartureTime}</td>
        <td><a class="btn btn-sm" href="showCompleteReservation?flightId=${flight.id}">Select</a></td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>