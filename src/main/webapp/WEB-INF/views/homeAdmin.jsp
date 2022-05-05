<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<script src="<c:url value="/decoration/js/jquery.min.js"/>"></script>
<link href="<c:url value="/decoration/fontawesome-free-5.15.2-web/css/all.css" />" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<c:url value="/decoration/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/decoration/css/datatable.min.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/decoration/css/main.css"/>" type="text/css">


<script src="<c:url value="/decoration/js/jquery-3.5.1.min.js" />"></script>
<script src="<c:url value="/decoration/js/jquery.min.js" />"></script>
<script src="<c:url value="/decoration/js/popper.js"/>"></script>
<script src="<c:url value="/decoration/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/decoration/js/jquery.validate.min.js"/>"></script>
<script src="<c:url value="/decoration/js/datatable.min.js"/>"></script>
<script src="<c:url value="/decoration/js/home.js"/>"></script>
<script src="<c:url value="/decoration/js/loadAjax.js"/>"></script>
<link rel="stylesheet" href="<c:url value="/decoration/css/datatablecrudView.css"/>">
</head>

<body style="min-height: 100vh;">
	<div
		class="container-fluid d-flex justify-content-between align-content-center"
		style="background-color: #4E2728; height: 50px; border-bottom: 1px solid #c2a55b;">
		<div class="d-flex flex-row">
			<img style="margin-right: 0;" class="navbar-brand"
				src="${pageContext.request.contextPath}/decoration/image/d.png"
				alt="D" width="30px" height="47px"> <a class="navbar-brand"
				id="namehotel" href="#"
				style="color: #c2a55b; margin-top: 0.2%; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">reaming
				<img class="position-absolute"
				src="${pageContext.request.contextPath}/decoration/image/h.png"
				alt="H" width="33px" height="33px"> <span
				style="margin-left: 27%;">otel</span>
			</a>
		</div>
		
		<button id="profile-btn" class="fas fa-hotel nav-link profile"
			role="button" data-toggle="dropdown"></button>
		<div class="dropdown-menu border" style="background-color: #4E2728; border-color: #c2a55b;">
			<a href="#" class="fas fa-user ml-4" style="font-size: 110%;">
				Profile</a>
			<div class="dropdown-divider"></div>
			<a href="#" class="fas fa-sign-out-alt ml-4" style="font-size: 110%;">
				Logout</a>
		</div>
		
		

       
		
		
		
	</div>
	<div class="content w-100 d-flex ">
		<div class="menu min-vh-100 d-flex flex-column"
			style="background-color: #4E2728; padding: 10px; width: 20%; min-width: 150px;"
			id="layout">
			<div class="d-flex my-3 menu-item">
				<span><i class="fa fa-home mt-1 mr-2" aria-hidden="true"
					style="font-size: 110%; width: fit-content;"></i></span> <a href="#"
					role="button" id="home"> Home</a>
			</div>
			<div class="d-flex my-3 menu-item">
				<span><i class="fas fa-bed mt-1 mr-2" aria-hidden="true"
					style="font-size: 110%; width: fit-content;"></i></span> <a role="button"
					id="roomlist" href="#" onclick="loadRoom()">Rooms List</a>
			</div>
			<div class="d-flex my-3 menu-item">
				<span><i class="fa fa-book mt-10 mr-2" aria-hidden="true"
					style="font-size: 110%; width: fit-content;"></i></span> <a role="button"
					id="booked" href="#" onclick="loadBooking()">Booking</a>
			</div>

			<div class="d-flex my-3 menu-item">
				<span><i class="fas fa-sign-in-alt mt-10 mr-2"
					aria-hidden="true" style="font-size: 110%; width: fit-content;"></i></span>
				<a role="button" id="checkin" href="#"
					onclick="loadCheckIn()">Check in</a>
			</div>
			<div class="d-flex my-3 menu-item">
				<span><i class="fas fa-sign-out-alt mt-10 mr-2"
					aria-hidden="true" style="font-size: 110%; width: fit-content;"></i></span>
				<a role="button" id="checkout" href="#"
					onclick="loadCheckOut()">Check out</a>
			</div>
			<div class="d-flex my-3 menu-item">
				<span><i class="fas fa-concierge-bell mt-10 mr-2"
					aria-hidden="true" style="font-size: 110%; width: fit-content;"></i></span>
				<a role="button" id="service" href="#"
					onclick="loadSerice()">Service</a>
			</div>
			<div class="d-flex my-3 menu-item">
				<span><i class="fas fa-list mt-1 mr-2" aria-hidden="true"
					style="font-size: 110%; width: fit-content;"></i></span> <a role="button"
					id="category" href="#" onclick="loadRoomCate()">Room
					Category</a>
			</div>
			<div class="d-flex my-3 menu-item">
				<span><i class="fas fa-money-bill-alt mt-10 mr-2"
					aria-hidden="true" style="font-size: 110%; width: fit-content;"></i></span>
				<a role="button" id="revenue" href="#">Revenue </a>
			</div>
			<div class="d-flex my-3 menu-item">
				<span><i class="fas fa-users mt-10 mr-2" aria-hidden="true"
					style="font-size: 110%; width: fit-content;"></i></span> <a role="button"
					id="users" href="#">Users</a>
			</div>
		</div>
		<div class="p-3" id="child"></div>

	</div>
	

	
	<!-- View Check-out HTML -->
	
	
	<!-- Add Modal HTML -->
	
	<!-- Edit Modal HTML -->
	
	
	
	


</body>

</html>