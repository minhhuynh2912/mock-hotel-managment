<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <div class="container" id="load">
        <div class="table-wrapper w-100 mx-auto">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Room</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <button class="btn btn-success" data-toggle="modal" data-target="#addRoom"><i
                                class="material-icons">&#xE147;</i> <span>Add New Room</span></button>
                        <a href="#deleteRoom" class="btn btn-danger" data-toggle="modal"><i
                                class="material-icons">&#xE15C;</i> <span>Delete</span></a>
                    </div>
                </div>
            </div>
            <table id="extable" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="selectAll">
                                <label for="selectAll"></label>
                            </span>
                        </th>
                        <th>Room number</th>
                        <th>Capacity</th>
                        <th>Status</th>
                        <th>Price</th>
                        <th>Description</th>
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
                        <td>101</td>
                        <td>5</td>
                        <td>booked</td>
                        <td>500000.0000</td>
                        <td>Luxury Room</td>
                        <td>
                            <a href="#editRoom" class="edit" data-toggle="modal"><i class="material-icons"
                                    data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#deleteRoom" class="delete" data-toggle="modal"><i class="material-icons"
                                    data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="checkbox2" name="options[]" value="1">
                                <label for="checkbox2"></label>
                            </span>
                        </td>
                        <td>102</td>
                        <td>3</td>
                        <td>booked</td>
                        <td>500000.0000</td>
                        <td>Luxury Room</td>
                        <td>
                            <a href="#editRoom" class="edit" data-toggle="modal"><i class="material-icons"
                                    data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#deleteRoom" class="delete" data-toggle="modal"><i class="material-icons"
                                    data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div id="addRoom" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form:form modelAttribute="roomAttribute" id="add-room" method="POST" action="${pageContext.request.contextPath}/addRoom" >
					<div class="modal-header">
						<h4 class="modal-title">Add Room</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Room Number</label> 
							<form:input type="text" class="form-control" path="roomNumber" name="roomNumber"/>
						</div>
						<div class="form-group">
							<label>Capacity</label> 
							<form:input type="text" class="form-control" path="capacity" name="roomCapacity"/>
						</div>
						<div class="form-group">
						    <label for="exampleFormControlSelect1">Room Category</label>
						    <form:select class="form-control" id="exampleFormControlSelect1" path="catRoomId">
						      
						      	<c:forEach var="option" items="${listRoomCate}" varStatus="loop">
						      		<form:option value="${loop.index+1}"><c:out value="${option.catRoomName}"/></form:option>
								</c:forEach>
						    </form:select>
						  </div>
						<div class="form-group">
							<label>Price</label> 
							<form:input type="text" class="form-control" path="price" name="roomPrice"/>
						</div>
						<div class="form-group">
							<label>Description</label> 
							<form:input type="text" class="form-control" path="description" name="roomDescription"/>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">

						<button type="submit" class="btn btn-success">Add</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	
	<div id="editRoom" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form id="edit-room" method="POST" action="/editRoom"
					modalAttribute="roomAttribute">
					<!-- Spring -->
					<div class="modal-header">
						<h4 class="modal-title">Edit Room</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Room Number</label> <input type="text"
								class="form-control" name="roomNumber">
						</div>
						<div class="form-group">
							<label>Capacity</label> <input type="text" class="form-control"
								name="roomCapacity">
						</div>
						<div class="form-group">
							<label>Status</label> <select class="form-control"
								name="roomStatus">
								<option>Available</option>
								<option>Ordered</option>
							</select>
						</div>
						<div class="form-group">
							<label>Price</label> <input type="text" class="form-control"
								name="roomPrice">
						</div>
						<div class="form-group">
							<label>Description</label> <input type="text"
								class="form-control" name="roomDescription">
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit" class="btn btn-info"
							value="Save">
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="deleteRoom" class="modal fade">
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
	
    <script type="text/javascript">
	    $('#extable').DataTable();
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
	    
	    $(document).ready(function() {
	    	
	    	 $.validator.addMethod("regex", function(value, element, regularExpression) {
	    	        var re = new RegExp(regularExpression);
	    	        return this.optional(element) || re.test(value);
	    	 }, "Please follow the true format");
	    	 
	    	 $.validator.addMethod("greaterThan", function(value, element, greater) {
	    	        return value >= greater;
	    	    });

	    	    $.validator.addMethod("lesserThan", function(value, element, lesser) {
	    	        return value <= lesser;
	    	    });
	    	
		    $('#add-room').validate({
		        rules: {
		            roomNumber: {
		                regex: /^(A|B|C)[0-9]{4}$/,
		                required: true,
		            },
		            capacity: {
		                regex: /^[0-9]$/,
		                greaterThan: 1,
		                lesserThan: 4,
		                required: true,
		            },
		            status: {
		                required: true,
		            },
		            price: {
		                regex: /^[0-9]+$/,
		                greaterThan: 1000,
		                required: true,
		            }
		        },
		        messages: {
		            roomNumber: {
		                regex: "Wrong format",
		            },
		            capacity: {
		                greaterThan: "At least 1 guest",
		                lesserThan: "At max 4 guests",
		                regex: "Only number",
		            },
		            price: {
		                regex: "Only number",
		                greaterThan: "At least 1000 dong",
		            }
		        }
		    });
	    });
    </script>
</body>

</html>