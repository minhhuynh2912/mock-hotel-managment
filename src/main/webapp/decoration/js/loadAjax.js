function loadBooking(){
$.ajax({
		type: "get",
		url: "/MockProject/listBooking",
		success: function (data) {	
			var d = $("#child");	
			d.html(data);
			
    		
		}
	});
}

function loadSerice(){
$.ajax({
		type: "get",
		url: "/MockProject/listService",
		success: function (data) {	
			var d = $("#child");
					
			d.html(data);
    		
		}
	});
}

function loadServiceCate(){
$.ajax({
		type: "get",
		url: "/MockProject/listServiceCategory",
		success: function (data) {
			var d = $("#child");
					
			d.html(data);
    		
		}
	});
}


function loadRoom(){
$.ajax({
		type: "get",
		url: "/MockProject/listRoom",
		success: function (data) {	
			var d = $("#child");
					
			d.html(data);
    		
		}
	});
}


function loadRoomCate(){
$.ajax({
		type: "get",
		url: "/MockProject/listRoomCategory",
		success: function (data) {	
			var d = $("#child");
					
			d.html(data);
    		
		}
	});
}


function loadCheckIn(){
$.ajax({
		type: "get",
		url: "/MockProject/checkIn",
		success: function (data) {	
			var d = $("#child");
					
			d.html(data);
    		
		}
	});
}

function loadCheckOut(){
$.ajax({
		type: "get",
		url: "/MockProject/checkOut",
		success: function (data) {	
			var d = $("#child");
					
			d.html(data);
    		
		}
	});
}





