<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../include.jsp" />
    <meta charset="UTF-8">
    <title>Find Flights</title>

    <script type="text/javascript">
        $(function () {
            $('#departureDate').datetimepicker();
        });
    </script>
</head>
<body>

<nav class="navbar navbar-light bg-light">
    <span class="navbar-brand mb-0 h1">Find Flights</span>
</nav>

<form class="form-inline" action="findFlights">
    <label class="sr-only" for="fromCity">From:</label>
    <input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0" id="fromCity" name="fromCity" placeholder="From">

    <label class="sr-only" for="toCity">To:</label>
    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
        <input type="text" class="form-control" id="toCity" name="toCity" placeholder="To">
    </div>

    <label class="sr-only" for="departureDate">To:</label>
    <div class="input-group date" data-provide="datepicker">
        <input type="text" class="form-control" id="departureDate" name="departureDate">
        <div class="input-group-addon">
            <span class="glyphicon glyphicon-th"></span>
        </div>
    </div>

    <button type="submit" class="btn btn-primary">Search</button>
</form>
</body>
</html>