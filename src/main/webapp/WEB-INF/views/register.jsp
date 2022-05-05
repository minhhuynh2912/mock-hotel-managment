<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="<c:url value="/decoration/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/decoration/fontawesome-free-5.0.13/web-fonts-with-css/css/fontawesome-all.css" />" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/decoration/css/style.css" />" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
		.error{
			color: #fbceb5;
			border-color: red;
		}
	</style>
</head>

<body class="img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/decoration/image/bg.jpg); no-repeat center center fixed; -webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;"">

    <section class="ftco-section">
        <div class="container">
            
            <div class="row justify-content-center h-100">
                <div class="col-md-6 col-lg-4" style="padding: 3%; background: #e7e0e0; border-radius: 1.5rem; opacity: 0.9;">
                    <div class="login-wrap p-0">
                        <form:form method="POST" action="register" class="signin-form" modelAttribute="account" id="registerForm">
                            <h1 class="mb-4 text-center" style="font-family: Pristinal; color: rgb(172, 76, 76);font-weight: bold;">
                                 Register Staff</h1>

							<p class="text-center" style="color:#fbceb5 "> ${message} </p>

                            <div class="form-group">
                                <form:input type="text" id="username" path="username" name="username" class="form-control" placeholder="Username" />
                            </div>
                            
                            <div class="form-group">
                                <form:input id="password-field" path="password" name="password" type="password" class="form-control" placeholder="Password"/>
                                <span toggle="#password-field"
                                    class="fa fa-fw fa-eye field-icon toggle-password"></span>
                            </div>
                            <div class="form-group">
                                <input id="repassword-field" type="password" name="repassword" class="form-control" placeholder="RePassword">
                                <span toggle="#repassword-field"
                                    class="fa fa-fw fa-eye field-icon toggle-password"></span>
                            </div>
                            <div class="form-group">
                                <form:input type="text" id="id" path="idenityNumber" name="idenityNumber" class="form-control" placeholder="Identity Number" />
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-primary submit px-3">Register</button>
                            </div>
                         </form:form>  
                    </div>
                    <div class="w-50 text-md-left">
                        <a href="index.html" style="color: white;">Back to Login</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="<c:url value="/decoration/js/jquery-3.5.1.min.js" />"></script>
    <script src="<c:url value="/decoration/js/jquery.min.js" />"></script>
    <script src="<c:url value="/decoration/js/popper.js" />"></script>
    <script src="<c:url value="/decoration/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/decoration/js/jquery.validate.min.js" />"></script>
    <script src="<c:url value="/decoration/js/main.js" />"></script>
    <script src="<c:url value="/decoration/js/myscript.js" />"></script>
</body>
</html>