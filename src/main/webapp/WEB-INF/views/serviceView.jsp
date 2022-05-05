<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"
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
<link rel="stylesheet" href="<c:url value="/decoration/css/serviceView.css" />">
<script src="<c:url value="/decoration/js/roomlist.js"/>"></script>


</head>
<body>
	<div id="load" class="mx-auto">
		<div class="w-100 d-flex mb-5 justify-content-sm-between">
			<div class="listcate " style="width: 60%;">
				<div class="container position-absolute w-75" id="load">
					<div class="table-wrapper ">
						<div class="table-title">
							<div class="row">
								<div class="col-sm-6">
									<h2>Manage Service</h2>
								</div>
								<div class="col-sm-6">
									<a href="#addService" class="btn btn-success"
										data-toggle="modal"><i class="material-icons">&#xE147;</i>
										<span>Add New Service</span></a> <a href="#deleteService"
										class="btn btn-danger" data-toggle="modal"><i
										class="material-icons">&#xE15C;</i> <span>Delete</span></a>
								</div>
							</div>
						</div>
						<table id="serviceTable" class="table table-striped table-hover ">
							<thead>
								<tr class="w-75">
									<th><span class="custom-checkbox"> <input
											type="checkbox" id="selectAll"> <label
											for="selectAll"></label>
									</span></th>
									<th>ServiceID</th>
									<th>CategoryName</th>
									<th>Image</th>
									<th>Price</th>
									<th>Description</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<tr class="w-75">
									<td><span class="custom-checkbox"> <input
											type="checkbox" id="checkbox2" name="options[]" value="1">
											<label for="checkbox2"></label>
									</span></td>

									<td>5</td>
									<td>booked</td>

									<td><div class="thumb">
											<img src="../image/food1.jpg" width=120px height=120px alt="">
										</div></td>
									<td>500000.0000</td>
									<td>Luxury Room</td>
									<td><a href="#editSer" class="edit" data-toggle="modal"><i
											class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
										<a href="#deleteService" class="delete" data-toggle="modal"><i
											class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
									</td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="addService" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="add-service">
					<div class="modal-header">
						<h4 class="modal-title">Add Service</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>ServiceName</label> <input type="text"
								class="form-control" name="serviceName">
						</div>
						<div class="form-group">
							<label>CategoryName</label> <input type="email"
								class="form-control" name="categoryName">
						</div>
						<div class="form-group">
							<label>Image</label> <input type="file" onchange="readURL(this);"
								name="image"> <img id="picture" src="#" alt="">
						</div>
						<div class="form-group">
							<label>Price</label> <input type="text" class="form-control"
								name="servicePrice">
						</div>
						<div class="form-group">
							<label>Description</label> <input type="text"
								class="form-control" name="serviceDescription">
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div id="deleteService" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">
						<h4 class="modal-title">Delete Service</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<p>Are you sure you want to delete these Records?</p>
						<p class="text-warning">
							<small>This action cannot be undone.</small>
						</p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-danger" value="Delete">
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="editSer" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="edit-service">
					<div class="modal-header">
						<h4 class="modal-title">Edit Service</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>ServiceName</label> <input type="text"
								class="form-control" name="serviceName">
						</div>
						<div class="form-group">
							<label>CategoryName</label> <input type="email"
								class="form-control" name="categoryName">
						</div>
						<div class="form-group">
							<label>Image</label> <input type="file" onchange="readURL(this);"
								name="image"> <img id="picture" src="#" alt="">
						</div>
						<div class="form-group">
							<label>Price</label> <input type="text" class="form-control"
								name="servicePrice">
						</div>
						<div class="form-group">
							<label>Description</label> <input type="text"
								class="form-control" name="serviceDescription">
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Save">
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