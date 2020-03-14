<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../include.jsp" />
    <meta charset="UTF-8">
    <title>User Login</title>
</head>
<body>
<nav class="navbar navbar-light bg-light">
    <span class="navbar-brand mb-0 h1">Login</span>
</nav>
<div class=container">
    <form action="login" method="post">
        <div class="form-group row">
            <label class="custom-control-label col-sm-2 col-form-label" for="inputEmail">User Name</label>
            <input type="email" class="form-control" id="inputEmail" name="email" aria-describedby="emailHelp" placeholder="Enter User Name">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group row">
            <label class="custom-control-label col-sm-2 col-form-label" for="inputPassword">Password</label>
            <input type="password" class="form-control" id="inputPassword" name="password" aria-describedby="passwordHelp" placeholder="Password">
            <small id="passwordHelp" class="form-text text-muted">Please Enter Password with at least 8 characters.</small>
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
        <small id="msg" class="form-text text-muted">${msg}</small>
    </form>
</div>
</body>
</html>