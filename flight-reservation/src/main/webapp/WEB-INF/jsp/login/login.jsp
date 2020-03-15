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


            Log in

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

            <form id="formLogin" action="login" method="POST" class="form-horizontal no-obvious-asterisk" role="form">

                <div class="vertical-input-form">
                    <!-- General Error -->
                    <!-- Username -->
                    <div class="form-group mandatory">
                        <label for="name" class="col-md-12 control-label">
                            <div class="label-text-wrapper">
                                <div class="label-spacer"></div>
                                <span>Email address</span>
                            </div>
                        </label>
                        <div class="col-md-12">
                            <input type="text"
                                   class="form-control input-sm fvalue"
                                   id="name"
                                   name="username"
                                   value=""
                                   placeholder=""/>
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
                            <input type="password"
                                   class="form-control input-sm fvalue"
                                   id="password"
                                   name="password"
                                   maxlength="25"
                                   value=""
                                   autocomplete="off"
                                   placeholder=""/>
                            <div class="alert alert-danger">${msg}</div>
                        </div>
                    </div>

                    <!-- Captcha -->


                    <!-- Remember Me -->
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="checkbox-container" id="remember-me-container">

                                <label for="remember-me">
                                    <div class="label-text-wrapper">
                                        <div class="label-spacer"></div>
                                        <input id="remember-me" type="checkbox" name="remember-me" value="1"
                                               data-mini="true"
                                               data-role="none">
                                        <span>Stay logged in</span>
                                    </div>
                                </label>
                            </div>
                        </div>
                    </div>


                    <!-- Buttons -->
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="button-container">
                                <button id="ciam-weblogin-auth-login-button" class="btn btn-primary btn-sm" type="submit">
                                    Login
                                </button>

                                <div class="link-container">
                                    <p><a id="ciam-weblogin-auth-reset-password-link" href="${pageContext.request.contextPath}/showResetPassword?app-id=CVIEWS.FLIGHTREG">
                                        Forgot password?
                                    </a></p>
                                </div>
                                <label class="control-label">You don't have an account yet?</label>
                                <a id="ciam-weblogin-auth-register-link" class="btn btn-sm" href="${pageContext.request.contextPath}/showRegistration?app-id=CVIEWS.FLIGHTREG">
                                    Register now
                                </a>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- Social Network -->


            </form>

        </div>

    </div>

</div>

</body>
</html>