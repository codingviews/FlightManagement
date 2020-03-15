<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <script>window['adrum-start-time'] = new Date().getTime();</script>

    <link rel="stylesheet" href="https://cdn-iam.mercedes-benz.com/profile/bootstrap/css/bootstrap.custom.stripped.min-90dc6c1.css"/>

    <!--[if !IE]><!-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <!--<![endif]-->

    <link href="css/custom.css" rel="stylesheet">

    <title>
        Log in
    </title>

    <script src="webjars/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://login.secure.mercedes-benz.com/profile/jquery/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script type="text/javascript" src="https://login.secure.mercedes-benz.com/profile/js/profile-merged-90dc6c1.min.js"></script>
</head>

<body class="embedded">
<div id="ciam-container" class="ciam-background-image">

    <!-- H.E.A.D.E.R. -->
    <div id="page-header">
    <span id="ciam-weblogin-header-title" class="ciam-logo page-title">


            Register

    </span>
        <span id="ciam-legal-text-header-title" class="ciam-logo page-title"></span>
    </div>

    <!-- D.E.S.C.R.I.P.T.I.O.N. -->
    <div id="ciam-description" class="ciam-explanation">
        Please enter your log-in data.
    </div>


    <!-- C.O.N.T.E.N.T. -->
    <div id="page-content" class="">
        <div class="page-content-width-limit">

            <form id="formRegister" action="registerUser" method="POST" class="form-horizontal no-obvious-asterisk" role="form">
                <div class="vertical-input-form">
                    <!-- General Error -->
                    <!-- FirstName -->
                    <div class="form-group mandatory">
                        <label for="firstName" class="col-md-12 control-label">
                            <div class="label-text-wrapper">
                                <div class="label-spacer"></div>
                                <span>First Name</span>
                            </div>
                        </label>
                        <div class="col-md-12">
                            <input type="text" class="form-control input-sm fvalue" id="firstName" name="firstName" value="" placeholder=""/>
                            <div class="error-msg-placement"></div>
                        </div>
                    </div>
                    <!-- LastName -->
                    <div class="form-group mandatory">
                        <label for="lastName" class="col-md-12 control-label">
                            <div class="label-text-wrapper">
                                <div class="label-spacer"></div>
                                <span>Last Name</span>
                            </div>
                        </label>
                        <div class="col-md-12">
                            <input type="text" class="form-control input-sm fvalue" id="lastName" name="lastName" value="" placeholder=""/>
                            <div class="error-msg-placement"></div>
                        </div>
                    </div>
                    <!-- Email -->
                    <div class="form-group mandatory">
                        <label for="email" class="col-md-12 control-label">
                            <div class="label-text-wrapper">
                                <div class="label-spacer"></div>
                                <span>Email address</span>
                            </div>
                        </label>
                        <div class="col-md-12">
                            <input type="text" class="form-control input-sm fvalue" id="email" name="email" value="" placeholder=""/>
                            <div class="error-msg-placement"></div>
                        </div>
                    </div>

                    <!-- Password -->
                    <div class="form-group mandatory">
                        <label for="password" class="col-md-12 control-label">
                            <div class="label-text-wrapper">
                                <div class="label-spacer"></div>
                                <span>Password</span>
                            </div>
                        </label>

                        <div class="col-md-12">
                            <input type="password" class="form-control input-sm fvalue" id="password" name="password" maxlength="25" value="" autocomplete="off" placeholder=""/>
                            <div class="alert alert-danger">${msg}</div>
                        </div>
                    </div>

                    <!-- Captcha -->

                    <!-- Buttons -->
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="button-container">
                                <button id="ciam-weblogin-auth-login-button" class="btn btn-primary btn-sm" type="submit">
                                    Register
                                </button>
                                <label class="control-label">Already have an account?</label>
                                <a id="ciam-weblogin-auth-register-link" class="btn btn-sm" href="${pageContext.request.contextPath}/showLogin?app-id=CVIEWS.FLIGHTREG">
                                    Login now
                                </a>
                            </div>
                        </div>
                    </div>

                </div>

            </form>

        </div>

    </div>
</div>
</body>
</html>