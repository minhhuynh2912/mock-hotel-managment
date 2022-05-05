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
<link rel="stylesheet" href="<c:url value="/decoration/css/main.css"/>">
<link rel="stylesheet" href="<c:url value="/decoration/css/style.css"/>">
</head>

<body>
	<div id="load" style="width: 100%;">
		<h1>Room Category</h1>
		<div class="w-100 d-flex mb-5 justify-content-between">
			<div class="roomform d-flex flex-column justify-content-between"
				style="border: 1px solid rgb(158, 141, 141); width: 40%;">
				<div class="roomform-group"
					style="background-color: lightgray; border-bottom: lightgray;">
					<h4 class="ml-4 mb-2 mt-2">Room Form</h4>
				</div>
				</hr>
				<h5 class="ml-4 mt-1 ">Category Room</h5>
				<div class="roomform-group mb-3">
					<input type="text" class="form-control mx-auto" style="width: 90%;">
				</div>
				<h5 class="ml-4">Category Name</h5>
				<div class="roomform-group btn-group mx-auto  mb-3"
					style="width: 90%">
					<button type="button"
						class="btn btn-danger dropdown-toggle text-right "
						style="background-color: white; color: black; border: 1px solid black;"
						data-toggle="dropdown">Action</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Deluxe Room</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div>
				</div>
				<h5 class="ml-4 ">Price</h5>
				<div class="roomform-group btn-group mx-auto mb-3"
					style="width: 90%">
					<button type="button"
						class="btn btn-danger dropdown-toggle text-right "
						style="background-color: white; color: black; border: 1px solid black;"
						data-toggle="dropdown">Action</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Available</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div>
				</div>
				</hr>
				<div class="btn d-flex mt-4 justify-content-lg-center"
					style="border-top: 1px solid rgb(105, 91, 91); width: 100%; background-color: lightgray">
					<button type="button" class="btn btn-primary mr-2">Save</button>
					<button type="button" class="btn btn-light">Cancel</button>
				</div>

			</div>
			<div class="listcate p-4"
				style="width: 60%; background-color: whitesmoke;">
				<table id="categorytable" class="table table-primary text-center">
					<thead class="thead-dark">
						<tr>
							<th>#</th>
							<th>Category Room</th>
							<th>Category Name</th>
							<th>Price</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>cate1</td>
							<td>Single</td>
							<td>20000.0000</td>
							<td>
								<div class="btn d-flex justify-content-center">
									<button type="button" class="btn btn-primary mr-2">Edit</button>
									<button type="button" class="btn btn-danger ">Del</button>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<script src="<c:url value="/decoration/jquery.min.js"/>"></script>
<script charset="utf8"
	src="<c:url value="/decoration/js/datatable.min.js" />"></script>

</html>