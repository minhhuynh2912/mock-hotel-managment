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
</head>

<body>
    <div class="container" id="load">
        <div class="table-wrapper w-75 mx-auto">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Check-In</b></h2>
                    </div>
                </div>
            </div>
            <table id="checkinTable" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="selectAll">
                                <label for="selectAll"></label>
                            </span>
                        </th>
                        <th>Category</th>
                        <th>Room</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                <label for="checkbox1"></label>
                            </span>
                        </td>
                        <td>Single Room</td>
                        <td>101</td>
                        <td>
                            <div class="text-center" style="background-color: chartreuse;">Available</div>
                        </td>
                        <td>
                            <a type="button" href="#addCheckin" class="btn btn-primary" style="color:white;" data-toggle="modal">Check-in</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div id="addCheckin" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">
						<h4 class="modal-title">Check-In</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								required>
						</div>
						<div class="form-group">
							<label>Contact#</label> <input type="email" class="form-control"
								required>
						</div>
						<div class="form-group">
							<label for="Check-In-Date">Check-In-Date:</label> <input
								type="date" class="form-control" id="Check-In-Date"
								name="Check-In-Date">
							<div class="form-group">
								<label for="Check-Out-Date">Check-Out-Date:</label> <input
									type="date" class="form-control" id="Check-Out-Date"
									name="Check-Out-Date">
							</div>
						</div>
						<div class="form-group">
							<label>Day of Stay</label> <input type="text"
								class="form-control" required>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Check-in">
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="deleteCheckin" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">
						<h4 class="modal-title">Delete Room</h4>
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
</body>

</html>