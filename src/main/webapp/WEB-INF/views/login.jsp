<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="<c:url value="/decoration/font-awesome-4.7.0/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/decoration/fontawesome-free-5.0.13/web-fonts-with-css/css/fontawesome-all.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/decoration/css/style.css" />"
	rel="stylesheet" type="text/css" />

<style type="text/css">
.error {
	color: #fbceb5;
	border-color: red;
}
</style>
</head>

<body class="img js-fullheight min-vh-100"
	style="background: url(${pageContext.request.contextPath}/decoration/image/bg.jpg); no-repeat center center fixed; -webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;">

	<section class="ftco-section h-100">
		<div class="container">

			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4"
					style="padding: 3%; background: #e7e0e0; border-radius: 1.5rem; opacity: 0.9;">
					<div class="login-wrap p-0">

						<form action="j_spring_security_check" class="signin-form" id="signInForm" method="POST">
							<h1 class="mb-4 text-center"
								style="font-family: Pristinal; color: rgb(172, 76, 76); font-weight: bold;">
								Dreaming Hotel</h1>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Username" 
									name="username" required>
							</div>
							<div class="form-group">
								<input id="password-field" type="password" class="form-control" name="password"
									placeholder="Password" required> <span
									toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<button type="submit"
									class="form-control btn btn-primary submit px-3">Sign
									In</button>
							</div>
							<div class="form-group">
								<div class="w-100 d-flex justify-content-between">
									<div class="form-check" style="color: #221f1d;">
										<input class="form-check-input mt-2" type="checkbox" value="" name="remember-me"
											id="flexCheckDefault"> <label
											class="form-check-label" for="flexCheckDefault">
											Remember me </label>
									</div>
								</div>
								<div class="w-50 text-md-left">
									<a href="register.html" class="register"
										style="color: rgb(66, 62, 62);"><i
										class="fas fa-user-check mr-1"></i>Create account</a>
								</div>
							</div>
						</form>
						<p class="w-100 text-center" style="color: rgb(66, 62, 62);">&mdash;
							Or Sign In With &mdash;</p>
						<div class="social d-flex text-center">
							<a href="#" class="px-2 py-2 mr-md-1 rounded"><i
								class="fa fa-facebook-square" aria-hidden="true"
								style="color: rgb(47, 47, 170);"></i> Facebook</a> <a href="#"
								class="px-2 py-2 ml-md-1 rounded "><i class="fa fa-envelope"
								aria-hidden="true"></i> Email</a>
						</div>
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