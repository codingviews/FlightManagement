<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../include.jsp" />
    <meta charset="UTF-8">
    <title>Complete Reservation Confirmation</title>
</head>
<body>

<nav class="navbar navbar-light bg-light">
    <span class="navbar-brand mb-0 h1">Complete Reservation Confirmation</span>
</nav>

<div class="container">
    <div class="form-group row">
        <label for="reservationConfirmation" class="col-sm-2 col-form-label">Complete Reservation Confirmation</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="reservationConfirmation" value="${msg}" placeholder="Complete Reservation Confirmation">
        </div>
    </div>
</div>
</body>
</html>