<%@page import="com.entity.ScheduleFlight"%>
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
	width: 80px;
	height: 25px;
	outline: none;
	border-radius: 5px;
	border: 1px solid #ccc;
	text-align: center;
}

form input[type="datetime-local"] {
	width: 160px;
	height: 30px;
	padding-left: 15px;
	outline: none;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 14px;
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
	<c:set var="num" value="${param.fid}"></c:set>
	<div class="main-content">
		<main>
			<section class="recent">
				<div class="activity-grid">
					<div class="activity-card">
						<div class="title">
							<h3>EDIT A SCHEDULED FLIGHT</h3>
						</div>
						<c:if test="${not empty num}">
							<%
							Integer FlightID = Integer.parseInt(request.getParameter("fid"));
							Integer AirlineID = Integer.parseInt(request.getParameter("aid"));
							Integer ScheduleID = Integer.parseInt(request.getParameter("sid"));
							AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
							ScheduleFlight sf = dao.getScheduleFlightById(ScheduleID, FlightID, AirlineID);
							%>
							<form method="post" action="edit_schedule">
								<input type="hidden" name="scheduleid" value="<%=ScheduleID%>">
								<input type="hidden" name="flightid" value="<%=FlightID%>">
								<input type="hidden" name="airlineid" value="<%=AirlineID%>">
								<table>
									<tr>
										<td><span>Select Airline</span></td>
										<td>:</td>
										<td><input type="text" name="airlineName"
											value="<%=sf.getAirlineName()%>" readonly></td>
									</tr>
									<tr>
										<td><span>Enter Flight Number</span></td>
										<td>:</td>
										<td><input type="text" name="flightno"
											value="<%=sf.getFlightNo()%>" readonly></td>
									</tr>
									<tr>
										<td><span>Select Source</span></td>
										<td>:</td>
										<td><input type="text" name="src"
											value="<%=sf.getSource()%>" readonly></td>
									</tr>
									<tr>
										<td><span>Select Destination</span></td>
										<td>:</td>
										<td><input type="text" name="dest"
											value="<%=sf.getDestination()%>" readonly></td>
									</tr>
									<tr>
										<td><span>Select Departure Date-Time of Flight</span></td>
										<td>:</td>
										<td><input type="datetime-local" name="depTime"
											placeholder="" id="depTime"
											value="<%=sf.getDepartureDate()%> <%=sf.getDepartureTime()%>"></td>
									</tr>
									<tr>
										<td><span>Select Arrival Date-Time of Flight</span></td>
										<td>:</td>
										<td><input type="datetime-local" name="arrTime"
											placeholder="" id="arrTime"
											value="<%=sf.getArrivalDate()%> <%=sf.getArrivalTime()%>"></td>
									</tr>
									<tr>
										<td><span>Enter Seat Cost for Economy Class</span></td>
										<td>:</td>
										<td><input type="number" name="EcoCost" placeholder=""
											min="0" oninput="this.value = Math.abs(this.value)"
											value="<%=sf.getEconomyCost()%>"></td>
									</tr>
									<tr>
										<td><span>Enter Seat Cost for Business Class</span></td>
										<td>:</td>
										<td><input type="number" name="BusCost" placeholder=""
											min="0" oninput="this.value = Math.abs(this.value)"
											value="<%=sf.getBusinessCost()%>"></td>
									</tr>
									<tr>
										<td><span>Enter Seat Cost for First Class</span></td>
										<td>:</td>
										<td><input type="number" name="FirCost" placeholder=""
											min="0" oninput="this.value = Math.abs(this.value)"
											value="<%=sf.getFirstClassCost()%>"></td>
									</tr>
								</table>
								<div class="button">
									<input type="submit" value="Submit" id="submit"> <input
										type="reset" value="Reset" id="reset">
								</div>
							</form>
						</c:if>
						<c:if test="${empty num}">
							<form method="post" action="add_schedule">
								<table>
									<tr>
										<td><span>Select Airline</span></td>
										<td>:</td>
										<td><select name="airline">
												<option value="No-select"><span>Select an
														Option</span>
													<%
													AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
													List<Airline> list = dao.getAirline();
													for (Airline a : list) {
													%>
												
												<option value="<%=a.getAirlineID()%>"><%=a.getAirlineName()%></option>
												<%
												}
												%>
										</select></td>
									</tr>
									<tr>
										<td><span>Enter Flight Number</span></td>
										<td>:</td>
										<td><input type="number" name="flightno" placeholder=""></td>
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
											placeholder=""></td>
									</tr>
									<tr>
										<td><span>Enter Number of Business Class Seats</span></td>
										<td>:</td>
										<td><input type="number" name="NOB" id="NOB"
											placeholder=""></td>
									</tr>
									<tr>
										<td><span>Enter Number of First Class Seats</span></td>
										<td>:</td>
										<td><input type="number" name="NOF" id="NOF"
											placeholder=""></td>
									</tr>
									<tr>
										<td><span>Total Number of Seats</span></td>
										<td>:</td>
										<td><input type="number" name="TNOS" placeholder=""></td>
									</tr>
									<tr>
										<td><span>Select Source</span></td>
										<td>:</td>
										<td><select name="src">
												<option value="No-select"><span>Select an
														Option</span>
												<option value="BOM"><span>Mumbai (BOM)</span>
												<option value="RPR"><span>Raipur (RPR)</span>
												<option value="CNN"><span>Kannur (CNN)</span>
												<option value="IXB"><span>Bagdogra (IXB)</span>
												<option value="PNQ"><span>Pune (PNQ)</span>
												<option value="SXR"><span>Srinagar (SXR)</span>
												<option value="VGA"><span>Vijayawada (VGA)</span>
												<option value="UDR"><span>Udaipur (UDR)</span>
												<option value="LKO"><span>Lucknow (LKO)</span>
										</select></td>
									</tr>
									<tr>
										<td><span>Select Destination</span></td>
										<td>:</td>
										<td><select name="dest">
												<option value="No-select"><span>Select an
														Option</span>
												<option value="BOM"><span>Mumbai (BOM)</span>
												<option value="RPR"><span>Raipur (RPR)</span>
												<option value="CNN"><span>Kannur (CNN)</span>
												<option value="IXB"><span>Bagdogra (IXB)</span>
												<option value="PNQ"><span>Pune (PNQ)</span>
												<option value="SXR"><span>Srinagar (SXR)</span>
												<option value="VGA"><span>Vijayawada (VGA)</span>
												<option value="UDR"><span>Udaipur (UDR)</span>
												<option value="LKO"><span>Lucknow (LKO)</span>
										</select></td>
									</tr>
									<tr>
										<td><span>Select Departure Date-Time of Flight</span></td>
										<td>:</td>
										<td><input type="datetime-local" name="depTime"
											placeholder="" id="depTime"></td>
									</tr>
									<tr>
										<td><span>Select Arrival Date-Time of Flight</span></td>
										<td>:</td>
										<td><input type="datetime-local" name="arrTime"
											placeholder="" id="arrTime"></td>
									</tr>
									<tr>
										<td><span>Enter Seat Cost for Economy Class</span></td>
										<td>:</td>
										<td><input type="number" name="EcoCost" placeholder=""></td>
									</tr>
									<tr>
										<td><span>Enter Seat Cost for Business Class</span></td>
										<td>:</td>
										<td><input type="number" name="BusCost" placeholder=""></td>
									</tr>
									<tr>
										<td><span>Enter Seat Cost for First Class</span></td>
										<td>:</td>
										<td><input type="number" name="FirCost" placeholder=""></td>
									</tr>
								</table>
								<div class="button">
									<input type="submit" value="Submit" id="submit"> <input
										type="reset" value="Reset" id="reset">
								</div>
							</form>
						</c:if>
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
		var status = document.getElementById("status").value;
		if (status == "failed") {
			swal("Failed", "Some error occurred..", "error");
		} else if (status == "success") {
			swal("Success", "Edited Successfully..", "success");
		}

		var today = new Date().toISOString().slice(0, 16);
		document.getElementsByName("depTime")[0].min = today;
		document.getElementsByName("arrTime")[0].min = today;
	</script>
</body>
</html>