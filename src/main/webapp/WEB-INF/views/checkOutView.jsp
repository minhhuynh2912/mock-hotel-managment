<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset='utf-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<title>Page Title</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/decoration/css/bootstrap.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/decoration/css/datatable.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/decoration/css/roomlistView.css" />">
<link rel="stylesheet"
	href="<c:url value="/decoration/css/checkoutView.css"/>">
<link rel="stylesheet" href="<c:url value="/decoration/css/style.css"/>">

</head>

<body>
	<div class="container" id="load">
		<div class="table-wrapper w-75 mx-auto">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>
							Manage <b>Check-Out</b>
						</h2>
					</div>
					<div class="col-sm-6">
						<a href="#addCheckin" class="btn btn-success" data-toggle="modal"><i
							class="material-icons">&#xE147;</i> <span>Add New Check-In</span></a>
						<a href="#deleteCheckin" class="btn btn-danger"
							data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>
					</div>
				</div>
			</div>
			<table id="checkoutTable" class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Category</th>
						<th>Room</th>
						<th>Reference</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="td">Single Room</td>
						<td class="td">101</td>
						<td class="td">0000</td>
						<td class="td">
							<div class="text-center" style="background-color: chartreuse;">Checked-in</div>
						</td>
						<td><a type="button" href="#viewCheckout"
							class="btn btn-primary" style="color: white;" data-toggle="modal">View</a>
						</td>
					</tr>
				</tbody>

			</table>
		</div>
	</div>
	
	<div id="viewCheckout" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">
						<h4 class="modal-title">View Check-Out</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Room Number:</label>
						</div>
						<div class="form-group">
							<label>Room Category:</label>
						</div>
						<div class="form-group">
							<label>Room Price:</label>
						</div>
						<div class="form-group">
							<label>Service:</label>
						</div>
						<div class="form-group">
							<label>Check-In(Name):</label>
						</div>
						<div class="form-group">
							<label>Contact no:</label>
						</div>
						<div class="form-group">
							<label>Check-In Date/Time:</label>
						</div>
						<div class="form-group">
							<label>Days:</label>
						</div>
						<div class="form-group">
							<label>Amount(Price*Days):</label>
						</div>
					</div>
					<div class="modal-footer">
						<input type="submit" class="btn btn-success" value="Checkout">
						<a type="button" href="#editCheckout" class="btn btn-success"
							data-toggle="modal">Edit</a> <input type="button"
							class="btn btn-default" data-dismiss="modal" value="Cancel">
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Edit Checkout HTML -->
	<div id="editCheckout" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">
						<h4 class="modal-title">View Check-Out</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Room Number:</label> <input type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Room Category:</label> <input type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Room Price:</label>
							<textarea class="form-control" required></textarea>
						</div>
						<div class="form-group">
							<label>Service:</label> <input type="text" class="form-control"
								required>
						</div>
						<div class="form-group">
							<label>Check-In(Name):</label> <input type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Contact no:</label> <input type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Check-In Date/Time:</label> <input type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Days:</label> <input type="text" class="form-control"
								required>
						</div>
						<div class="form-group">
							<label>Amount(Price*Days):</label> <input type="text"
								class="form-control" required>
						</div>
					</div>
					<div class="modal-footer">
						<input type="submit" class="btn btn-success" value="Save">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel">
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="<c:url value="/decoration/jquery.min.js"/>"></script>
	<script charset="utf8"
		src="<c:url value="/decoration/js/datatable.min.js" />"></script>
</body>

</html>