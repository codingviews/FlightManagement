<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../include.jsp" />
    <meta charset="UTF-8">
    <title>Register User</title>
</head>
<body>

    <nav class="navbar navbar-light bg-light">
        <span class="navbar-brand mb-0 h1">Register New User</span>
    </nav>
    <div class="leftContainer">
        <form action="registerUser" method="post">
            <div class="form-group row">
                <label class="custom-control-label col-sm-2 col-form-label" for="firstName">First Name</label>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter First Name">
            </div>
            <div class="form-group row">
                <label class="custom-control-label col-sm-2 col-form-label" for="lastName">Last Name</label>
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter Last Name">
            </div>
            <div class="form-group row">
                <label class="custom-control-label col-sm-2 col-form-label" for="inputEmail">User Name</label>
                <input type="email" class="form-control" id="inputEmail" aria-describedby="emailHelp" name="email" placeholder="Enter User Name">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group row">
                <label class="custom-control-label col-sm-2 col-form-label" for="inputPassword">Password</label>
                <input type="password" class="form-control" id="inputPassword" aria-describedby="passwordHelp" name="password" placeholder="Password">
                <small id="passwordHelp" class="form-text text-muted">Please Enter Password with at least 8 characters.</small>
            </div>
            <div class="form-group row">
                <label class="custom-control-label col-sm-2 col-form-label" for="inputPasswordConfirm">Confirm Password</label>
                <input type="password" class="form-control" id="inputPasswordConfirm" aria-describedby="confirmPasswordHelp" name="confirmPassword" placeholder="Confirm Password">
                <small id="confirmPasswordHelp" class="form-text text-muted">Please Enter Password with at least 8 characters.</small>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>