<%@page import="com.entity.Flights"%>
<%@page import="com.entity.Airline"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.DAO.AdminDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
main {
	margin-top: 60px;
	background: #f1f5f9;
	min-height: 91.8vh;
	padding: 1rem 3rem;
}

.recent {
	margin-top: 2rem;
	margin-bottom: 3rem;
}

.activity-grid {
	display: grid;
	grid-template-columns: 100%;
	grid-column-gap: 1.5rem;
}

.activity-card {
	background: #fff;
	border-radius: 7px;
}

.activity-card .title {
	display: flex;
	align-items: center;
}

.activity-card .title a {
	background: yellow;
	color: black;
	font-weight: 700;
	margin-left: 800px;
	padding: .5rem;
}

.activity-card h3 {
	color: var(--text-black);
	margin: 2rem;
}

.activity-card table {
	width: 95%;
	margin-left: 1.7rem;
	border-collapse: collapse;
}

th, td {
	font-size: .9rem;
	text-align: left;
	padding: .6rem .5rem;
	color: var(--color-dark);
}

tbody tr:nth-child(even) {
	background: #f9fafc;
}

tr:nth-child(odd) {
	background: #efefef;
}

form input[type="checkbox"] {
	margin-left: 10px;
}

form input[type="number"], input[type="text"] {
	width: 50px;
	height: 25px;
	padding-left: 15px;
	outline: none;
	border-radius: 5px;
	border: 1px solid #ccc;
}

form select {
	width: 150px;
	height: 25px;
	padding-left: 15px;
	outline: none;
	border-radius: 5px;
	border: 1px solid #ccc;
}

#class {
	margin-left: 10px;
}

form .button {
	height: 45px;
	margin: 35px 0 0 0;
	display: flex;
	align-items: center;
}

form .button #submit, form .button #reset {
	height: 100%;
	width: 10%;
	outline: none;
	border: none;
	border-radius: 6px;
	font-size: 16px;
	cursor: pointer;
	margin-bottom: 2rem;
}

form .button #submit {
	background: #007bff;
	color: white;
	margin-left: 250px;
}

form .button #submit:hover {
	background: #0069d9;
}

form .button #reset {
	background: red;
	color: white;
	margin-left: 50px;
}

form .button #reset:hover {
	background: #dc1104;
}
</style>
</head>
<body>
	<%@include file="adminnav.jsp"%>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<div class="main-content">
		<main>
			<section class="recent">
				<div class="activity-grid">
					<div class="activity-card">
						<div class="title">
							<h3>EDIT A FLIGHT</h3>
							<a href="flightmanagement.jsp"><i
								class="fa-solid fa-paper-plane" style="margin-right: .5rem;"></i>View
								Flights</a>
						</div>
						<%
						Integer FlightID = Integer.parseInt(request.getParameter("flightId"));
						AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
						Flights f = dao.getFlightById(FlightID);
						%>
						<form method="post" action="edit_flight">
							<input type="hidden" name="airlineid"
								value="<%=f.getAirlineID()%>"> <input type="hidden"
								name="flightid" value="<%=FlightID%>">
							<table>
								<tr>
									<td><span>Select Airline</span></td>
									<td>:</td>
									<td><input type="text" name="airline"
										value="<%=f.getAirlineName()%>" readonly style="width: 80px;"></td>
								</tr>
								<tr>
									<td><span>Enter Flight Number</span></td>
									<td>:</td>
									<td><input type="number" name="flightno" placeholder=""
										style="width: 80px;" min="0"
										oninput="this.value = Math.abs(this.value)"
										value="<%=f.getFlightNo()%>" required></td>
								</tr>
								<tr>
									<td><span>Flight Has</span></td>
									<td>:</td>
									<td><input type="checkbox" name="Economy" id="economy"
										checked><span id="class">Economy</span> <input
										type="checkbox" name="Business" id="business" checked><span
										id="class">Business</span> <input type="checkbox"
										name="FirstClass" id="firstclass" checked><span
										id="class">First Class</span></td>
								</tr>
								<tr>
									<td><span>Enter Number of Economy Class Seats</span></td>
									<td>:</td>
									<td><input type="number" name="NOE" id="NOE"
										placeholder="" min="0"
										oninput="this.value = Math.abs(this.value)"
										value="<%=f.getEconomySeats()%>" required></td>
								</tr>
								<tr>
									<td><span>Enter Number of Business Class Seats</span></td>
									<td>:</td>
									<td><input type="number" name="NOB" id="NOB"
										placeholder="" min="0"
										oninput="this.value = Math.abs(this.value)"
										value="<%=f.getBusinessSeats()%>" required></td>
								</tr>
								<tr>
									<td><span>Enter Number of First Class Seats</span></td>
									<td>:</td>
									<td><input type="number" name="NOF" id="NOF"
										placeholder="" min="0"
										oninput="this.value = Math.abs(this.value)"
										value="<%=f.getFirstClassSeats()%>" required></td>
								</tr>
								<tr>
									<td><span>Total Number of Seats</span></td>
									<td>:</td>
									<td><input type="text" name="TNOS" id="TNOS"
										placeholder="" value="<%=f.getTotalSeats()%>"
										onclick="getValue()" readonly="readonly"></td>
								</tr>
							</table>
							<div class="button">
								<input type="submit" value="Submit" id="submit"> <input
									type="reset" value="Reset" id="reset">
							</div>
						</form>
					</div>
				</div>
			</section>
		</main>
	</div>
	<script type="text/javascript">
		document.getElementById('economy').onchange = function() {
			document.getElementById('NOE').disabled = !this.checked;
		};
		document.getElementById('business').onchange = function() {
			document.getElementById('NOB').disabled = !this.checked;
		};
		document.getElementById('firstclass').onchange = function() {
			document.getElementById('NOF').disabled = !this.checked;
		};
		function getValue() {
			let val1 = Number(document.getElementById('NOE').value);
			let val2 = Number(document.getElementById('NOB').value);
			let val3 = Number(document.getElementById('NOF').value);
			let val4 = val1 + val2 + val3;
			document.getElementById('TNOS').value = "" + val4;
		}
		var status = document.getElementById("status").value;
		if (status == "failed") {
			swal("Failed", "Some error occurred..", "error");
		} else if (status == "success") {
			swal("Failed", "Edited Successfully..", "success");
		}
	</script>
</body>
</html>