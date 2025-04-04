<%@page import="com.entity.ScheduleFlight"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.DAO.UserDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.sub-btn').on('click',function(){
		$('.form-popup').hide;
		});
});
</script>
<style type="text/css">
body {
	overflow: auto;
}

.page {
	height: 200px;
	width: 100%;
	background-image: linear-gradient(50deg, #007bff, #143F6B);
}

.head {
	position: absolute;
	color: white;
	margin-left: 100px;
	margin-top: 110px;
	font-weight: bold;
}

.infos {
	position: absolute;
	width: 60%;
	background-color: rgb(255, 250, 254);
	margin-top: 140px;
	margin-left: 100px;
	height: auto;
}

.imp {
	position: absolute;
	width: 60%;
	background-color: rgb(255, 250, 254);
	margin-top: 660px;
	margin-left: 100px;
	height: auto;
}

.addPass {
	position: absolute;
	width: 60%;
	background-color: rgb(255, 250, 254);
	margin-top: 63.9%;
	margin-left: 100px;
	height: auto;
}

.addPass button {
	text-decoration: none;
	margin-right: 1.5rem;
	background: #007bff;
	color: white;
	padding: 5px;
	border: 0px;
	border-radius: 8px;
	margin-right: 1.5rem;
}

.addPass button:hover {
	background: #0069d9;
}

.label-group {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.total {
	position: absolute;
	width: 22%;
	background-color: rgb(255, 250, 254);
	margin-top: 140px;
	margin-left: 70%;
	height: 200px;
}

.center {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
}

.tickets {
	width: 800px;
	height: fit-content;
	border-radius: 3mm;
	border-sizing: border-box;
	padding: 10px;
	font-family: poppins;
	max-height: 96vh;
	overflow: auto;
}

.ticket-selector {
	display: flex;
	align-items: center;
	justify-content: space-between;
	flex-direction: column;
	box-sizing: border-box;
	padding: 20px;
}

.seats {
	width: 100%;
	display: flex;
	align-items: center;
	flex-direction: column;
	min-height: 150px;
	position: relative;
}

.status {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-evenly;
}

.seats:before {
	content: "";
	position: absolute;
	bottom: 0;
	left: 50%;
	transform: translate(-50%, 0);
	width: 220px;
	height: 7px;
}

.item {
	position: relative;
}

.item:before {
	content: "";
	position: absolute;
	top: 50%;
	left: -12px;
	transform: translate(0, -50%);
	width: 10px;
	height: 10px;
	background: rgb(255, 255, 255);
	outline: 0.2mm solid rgb(120, 120, 120);
	border-radius: 0.3mm;
}

.item:nth-child(2):before {
	background: rgb(180, 180, 180);
	outline: none;
}

.item:nth-child(3):before {
	background: rgb(28, 185, 120);
	outline: none;
}

.all-seats {
	display: grid;
	grid-template-columns: repeat(11, 1fr);
	grid-gap: 15px;
	margin-top: 20px;
	position: relative;
}

.seat {
	width: 20px;
	height: 20px;
	background: white;
	border-radius: 0.5mm;
	outline: 0.3mm solid rgb(180, 180, 180);
	cursor: pointer;
}

.all-seats input:checked+label {
	background: rgb(28, 185, 120);
	outline: none;
}

.seat.booked {
	background: rgb(180, 180, 180);
	outline: none;
}

input {
	display: none;
}

.timings {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 30px;
}

.dates {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.date-item {
	width: 80px;
	height: 70px;
	background: rgb(233, 233, 233);
	text-align: center;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 10px 0;
	border-radius: 3mm;
	cursor: pointer;
}

input:checked+label {
	background: #007bff;
	color: white;
}

.blur-bg-overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	opacity: 0;
	pointer-events: none;
	backdrop-filter: blur(8px);
	pointer-events: none;
	transition: 0.1s ease;
}

.show-popup .blur-bg-overlay {
	opacity: 1;
	pointer-events: auto;
}

.form-popup {
	position: fixed;
	top: 50%;
	left: 50%;
	background: #fff;
	transform: translate(-50%, -100%);
	width: 100%;
	max-width: 720px;
	opacity: 0;
	pointer-events: none;
}

.show-popup .form-popup {
	opacity: 1;
	border-radius: 10px;
	pointer-events: auto;
	transform: translate(-50%, -50%);
	transition: transform 0.3s ease;
	pointer-events: auto;
}

.form-content form {
	padding: 20px;
	background: #007bff;
}

form label {
	font-weight: 500;
	color: white;
}

form .sub-btn {
	color: #007bff;
}

.form-popup .close-btn {
	position: absolute;
	top: 12px;
	right: 12px;
	color: white;
	cursor: pointer;
}

#dataTable {
	width: 94%;
	margin-left: 1.7rem;
	border-collapse: collapse;
}

thead {
	background: #efefef;
	text-align: center;
}

td, th {
	font-size: .9rem;
	text-align: center;
	padding: .5rem .5rem;
}
</style>
</head>
<body style="background-color: #CECECE;">
	<%@include file="nav.jsp"%>
	<%
	String category = request.getParameter("category");
	int id = Integer.parseInt(request.getParameter("id"));
	UserDAOImpl dao = new UserDAOImpl(DBConnect.getCon());
	ScheduleFlight sf = dao.getFlightById(id);
	%>
	<div class="page">
		<div class="head">
			<h5>Complete Your Booking</h5>
		</div>
		<input type="hidden" name="dated" id="dated"
			value="<%=request.getParameter("date")%>"> <input
			type="hidden" name="count" id="count"
			value="<%=request.getParameter("count")%>">
		<div class="infos">
			<div>
				<p style="margin: 15px; font-weight: bold;">Seat Availability</p>
				<hr style="margin-right: 25px; margin-left: 15px;">
				<div class="center">
					<div class="tickets">
						<div class="ticket-selector">
							<div class="seats">
								<div class="status">
									<div class="item">Available</div>
									<div class="item">Booked</div>
									<div class="item">Selected</div>
								</div>
								<div class="all-seats">
									<input type="checkbox" name="tickets" id="s1"> <label
										for="s1" class="seat"></label>
								</div>
							</div>
							<div class="timings">
								<div class="dates">
									<input type="radio" name="date" id="d1"> <label
										for="d1" class="date-item">
										<div class="day" id="day1"></div>
										<div class="date" id="date1"></div>
									</label>
								</div>
								<div class="dates">
									<input type="radio" name="date" id="d2"> <label
										for="d2" class="date-item">
										<div class="day" id="day2"></div>
										<div class="date" id="date2"></div>
									</label>
								</div>
								<div class="dates">
									<input type="radio" name="date" id="d3"> <label
										for="d3" class="date-item">
										<div class="day" id="day3"></div>
										<div class="date" id="date3"></div>
									</label>
								</div>
								<div class="dates">
									<input type="radio" name="date" id="d4"> <label
										for="d4" class="date-item">
										<div class="day" id="day4"></div>
										<div class="date" id="date4"></div>
									</label>
								</div>
								<div class="dates">
									<input type="radio" name="date" id="d5"> <label
										for="d5" class="date-item">
										<div class="day" id="day5"></div>
										<div class="date" id="date5"></div>
									</label>
								</div>
								<div class="dates">
									<input type="radio" name="date" id="d6"> <label
										for="d6" class="date-item">
										<div class="day" id="day6"></div>
										<div class="date" id="date6"></div>
									</label>
								</div>
								<div class="dates">
									<input type="radio" name="date" id="d7"> <label
										for="d7" class="date-item">
										<div class="day" id="day7"></div>
										<div class="date" id="date7"></div>
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="imp">
			<p style="margin: 15px; font-weight: bold;">Important Information</p>
			<hr style="margin-right: 25px; margin-left: 15px;">
			<ol>
				<li>Check travel guidelines and baggage information below:</li>
				<ul>
					<li style="padding: 10px;">Carry no more than 1 check-in
						baggage and 1 hand baggage per passenger. If violated, airline may
						levy extra charges.</li>
				</ul>
				<li>Unaccompanied Minors Travelling:</li>
				<ul>
					<li style="padding: 10px;">An unaccompanied minor usually
						refers to a child traveling without an adult aged 18 or older.</li>
					<li style="padding: 10px;">Please check with the airline for
						their rules and regulations regarding unaccompanied minors, as
						these can differ between airlines.</li>
				</ul>
			</ol>
		</div>
		<div class="addPass">
			<div class="label-group">
				<p style="margin: 15px; font-weight: bold;">Add Passenger</p>
				<button class="add-pass">Add Passenger</button>
			</div>
			<table id="dataTable">
				<thead>
					<tr>
						<th>Name</th>
						<th>DOB</th>
						<th>Gender</th>
						<th>Mobile No</th>
					</tr>
				</thead>
			</table>
		</div>
		<div class="total">
			<h4 style="margin: 15px;">Fare Summary</h4>
			<div class="row">
				<div class="col-md-6">
					<p class="text-center">Base Fare</p>
				</div>
				<div class="col-md-6">
					<%
					if (category.equalsIgnoreCase("Economy")) {
					%>
					<p class="text-center" id="amt"><%=sf.getEconomyCost()%></p>
					<%
					} else if (category.equalsIgnoreCase("Business")) {
					%>
					<p class="text-center" id="amt"><%=sf.getBusinessCost()%></p>
					<%
					} else if (category.equalsIgnoreCase("FirstClass")) {
					%>
					<p class="text-center" id="amt"><%=sf.getFirstClassCost()%></p>
					<%
					}
					%>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p class="text-center">Tax and Surcharges</p>
				</div>
				<div class="col-md-6">
					<p class="text-center" id="gst">743</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p class="text-center fw-bold">Total Amount</p>
				</div>
				<div class="col-md-6">
					<p class="text-center fw-bold" id="finalamt">4250</p>
				</div>
			</div>
		</div>
	</div>
	<div class="blur-bg-overlay"></div>
	<div class="form-popup">
		<span class="close-btn"><i class="fa-solid fa-xmark"></i></span>
		<div class="form-box login">
			<div class="form-content">
				<form method="post" action="">
					<div class="row">
						<div class="col">
							<label for="name">Name:</label><input type="text" name="pname"
								placeholder="Name..." class="form-control" id="name">
						</div>
						<div class="col">
							<label for="date">DOB:</label><input type="date" name="pname"
								placeholder="DOB.." class="form-control" id="date">
						</div>
					</div>
					<div class="row">
						<div class="col">
							<label for="gender">Gender:</label> <select name="gender"
								id="gender" class="form-control">
								<option value="No">No Select</option>
								<option value="M">Male</option>
								<option value="F">Female</option>
								<option value="Others">Preferred Not To Say</option>
							</select>
						</div>
						<div class="col">
							<label for="phoneNo">Mobile No:</label><input type="number"
								name="phoneNo" placeholder="Mobile No.." min="0"
								oninput="this.value = Math.abs(this.value)" class="form-control"
								id="phoneNo">
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 ms-4"></div>
						<div class="col-md-3 mt-3 ms-5">
							<input type="button" value="Add" class="sub-btn form-control"
								onclick="return addData()">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function addData() {
        // Get the form values
        var name = document.getElementById("name").value;
        var date = document.getElementById("date").value;
        var gender=document.getElementById("gender").value;
        var phoneNo=document.getElementById("phoneNo").value;
	
        // Create a new row and cells
        var table = document.getElementById("dataTable");
        var newRow = table.insertRow();
        var cell1 = newRow.insertCell(0);
        var cell2 = newRow.insertCell(1);
        var cell3 = newRow.insertCell(2);
        var cell4 = newRow.insertCell(3);

        // Add the data to the cells
        cell1.innerHTML = name;
        cell2.innerHTML = date;
        cell3.innerHTML=gender;
        cell4.innerHTML=phoneNo;

        // Clear the form fields
        document.getElementById("dataForm").reset();

    }
	</script>
	<script type="text/javascript">
		let seats = document.querySelector(".all-seats");
		for (var i = 0; i < 62; i++) {
			if (i == 2 || i == 5 || i == 11 || i == 14 || i == 20 || i == 23
					|| i == 29 || i == 32 || i == 38 || i == 41 || i == 47
					|| i == 50 || i == 56 || i == 59) {
				seats
						.insertAdjacentHTML("beforeend",
								'<div class="gap"></div>');
			}
			let randint = Math.floor(Math.random() * 2);
			let booked = randint === 1 ? "booked" : "";
			seats.insertAdjacentHTML("beforeend",
					'<input type="checkbox" name="tickets" id="s1' + (i + 2)
							+ '"> <label for="s1' + (i + 2)
							+ '" class="seat"></label>')
		}

		const weekday = [ "Sunday", "Monday", "Tuesday", "Wednesday",
				"Thursday", "Friday", "Saturday" ];
		var now = new Date();
		var d1 = ("0" + now.getDate()).slice(-2);
		var d2 = ("0" + (now.getDate() + 1)).slice(-2);
		var d3 = ("0" + (now.getDate() + 2)).slice(-2);
		var d4 = ("0" + (now.getDate() + 3)).slice(-2);
		var d5 = ("0" + (now.getDate() + 4)).slice(-2);
		var d6 = ("0" + (now.getDate() + 5)).slice(-2);
		var d7 = ("0" + (now.getDate() + 6)).slice(-2);
		var month = ("0" + (now.getMonth() + 1)).slice(-2);
		var today1 = now.getFullYear() + "-" + (month) + "-" + (d1);
		var today2 = now.getFullYear() + "-" + (month) + "-" + (d2);
		var today3 = now.getFullYear() + "-" + (month) + "-" + (d3);
		var today4 = now.getFullYear() + "-" + (month) + "-" + (d4);
		var today5 = now.getFullYear() + "-" + (month) + "-" + (d5);
		var today6 = now.getFullYear() + "-" + (month) + "-" + (d6);
		var today7 = now.getFullYear() + "-" + (month) + "-" + (d7);

		document.getElementById("date1").innerText = today1;
		let day1 = weekday[now.getDay()];
		document.getElementById("day1").innerText = day1;

		var d2 = String(now.getDate() + 1).padStart(2, '0');
		document.getElementById("date2").innerText = today2;
		let day2 = weekday[now.getDay() + 1];
		document.getElementById("day2").innerText = day2;

		var d3 = String(now.getDate() + 2).padStart(2, '0');
		document.getElementById("date3").innerText = today3;
		let day3 = weekday[now.getDay() + 2];
		document.getElementById("day3").innerText = day3;

		var d4 = String(now.getDate() + 3).padStart(2, '0');
		document.getElementById("date4").innerText = today4;
		let day4 = weekday[now.getDay() + 3];
		document.getElementById("day4").innerText = day4;

		var d5 = String(now.getDate() + 4).padStart(2, '0');
		document.getElementById("date5").innerText = today5;
		let day5 = weekday[now.getDay() + 4];
		document.getElementById("day5").innerText = day5;

		var d6 = String(now.getDate() + 5).padStart(2, '0');
		document.getElementById("date6").innerText = today6;
		let day6 = weekday[now.getDay() + 5];
		document.getElementById("day6").innerText = day6;

		var d7 = String(now.getDate() + 6).padStart(2, '0');
		document.getElementById("date7").innerText = today7;
		let day7 = weekday[now.getDay() - 1];
		document.getElementById("day7").innerText = day7;

		const d = document.getElementById("dated").value;
		if (d == today1) {
			document.getElementById("d1").checked = true;
		} else if (d == today2) {
			document.getElementById("d2").checked = true;
		} else if (d == today3) {
			document.getElementById("d3").checked = true;
		} else if (d == today4) {
			document.getElementById("d4").checked = true;
		} else if (d == today5) {
			document.getElementById("d5").checked = true;
		} else if (d == today6) {
			document.getElementById("d6").checked = true;
		} else if (d == today7) {
			document.getElementById("d7").checked = true;
		}

		let count = Number(document.getElementById("count").value);
		let amt = Number(document.getElementById("amt").innerText) * count;
		let temp = amt * 18 / 100;
		let finalamt = amt + temp;
		let gst = finalamt - amt;
		document.getElementById("finalamt").innerText = finalamt;
		document.getElementById("gst").innerText = gst;

	</script>
	<script type="text/javascript">
	const showPopupBtn = document.querySelector('.add-pass');
	const hidePopupBtn = document.querySelector('.form-popup .close-btn');
	showPopupBtn.addEventListener("click",()=>{
		document.body.classList.toggle("show-popup");
		});
	hidePopupBtn.addEventListener("click",()=>showPopupBtn.click());
	</script>
</body>
</html>