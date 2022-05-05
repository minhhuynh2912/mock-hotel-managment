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
</head>

<body>

    <div class="container" id="load">
        <div class="table-wrapper w-75 mx-auto">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Booking</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addCheckin" class="btn btn-success" data-toggle="modal"><i
                                class="material-icons">&#xE147;</i> <span>Add New Check-In</span></a>
                        <a href="#deleteCheckin" class="btn btn-danger" data-toggle="modal"><i
                                class="material-icons">&#xE15C;</i> <span>Delete</span></a>
                    </div>
                </div>
            </div>
            <table id="bookedTable" class="table table-striped table-hover">
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
                            <a type="button" href="#addBooking" class="btn btn-primary" style="color:white; background-color: rgb(235, 109, 63); border:rgb(235, 109, 63) ;" data-toggle="modal">Booked</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    
    <div id="addBooking" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form:form id="add-booking">
					<div class="modal-header">
						<h4 class="modal-title">Check-In</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								name="checkInName">
						</div>
						<div class="form-group">
							<label>Contact#</label> <input type="text" class="form-control"
								name="checkInContact">
						</div>
						<div class="form-group">
							<label for="Check-In-DateBooking">Check-In-Date:</label> <input
								type="date" class="form-control" id="Check-In-DateBooking"
								name="checkInStart">
							<div class="form-group">
								<label for="Check-Out-DateBooking">Check-Out-Date:</label> <input
									type="date" class="form-control" id="Check-Out-DateBooking"
									name="checkInEnd">
							</div>
						</div>
						<div class="form-group">
							<label>Day of Stay</label> <input type="text"
								class="form-control" name="checkInDayStay">
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Check-in">
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<div id="addBooking" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="add-booking">
					<div class="modal-header">
						<h4 class="modal-title">Check-In</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								name="checkInName">
						</div>
						<div class="form-group">
							<label>Contact#</label> <input type="email" class="form-control"
								name="checkInContact">
						</div>
						<div class="form-group">
							<label for="Check-In-Date">Check-In-Date:</label> <input
								type="date" class="form-control" id="Check-In-DateBooking"
								name="checkInStart">
							<div class="form-group">
								<label for="Check-Out-Date">Check-Out-Date:</label> <input
									type="date" class="form-control" id="Check-Out-DateBooking"
									name="checkInDate">
							</div>
							<div class="form-group">
								<label>Day of Stay</label> <input type="text"
									class="form-control" name="checkInDayStay">
							</div>
						</div>
						<div class="modal-footer">
							<input type="button" class="btn btn-default" data-dismiss="modal"
								value="Cancel"> <input type="submit"
								class="btn btn-success" value="Book">
						</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$('#bookedTable').DataTable();
	    $('[data-toggle="tooltip"]').tooltip();
	    // Select/Deselect checkboxes
	    var checkbox = $('table tbody input[type="checkbox"]');
	    $("#selectAll").click(function() {
	        if (this.checked) {
	            checkbox.each(function() {
	                this.checked = true;
	            });
	        } else {
	            checkbox.each(function() {
	                this.checked = false;
	            });
	        }
	    });
	    checkbox.click(function() {
	        if (!this.checked) {
	            $("#selectAll").prop("checked", false);
	        }
	    });	
	</script>
    
</body>

</html>