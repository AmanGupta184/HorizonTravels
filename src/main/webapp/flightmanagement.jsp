<%@page import="com.entity.Flights"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.DAO.AdminDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Flights</title>
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
	margin-left: 745px;
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

.activity-card thead {
	background: #efefef;
	text-align: center;
}

th, td {
	font-size: .9rem;
	text-align: center;
	padding: 1rem .5rem;
	color: var(--color-dark);
	padding: 1rem .5rem;
}

tbody tr:nth-child(even) {
	background: #f9fafc;
}

.td-team {
	display: flex;
	align-items: center;
	justify-content: center;
}

.but-1 {
	background: #007bff;
	padding: .5rem;
	margin-right: .5rem;
}

.but-2 {
	background: black;
	padding: .5rem;
	margin-right: .5rem;
}

.but-3 {
	background: red;
	padding: .5rem;
}

.td-team a {
	color: white;
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
							<h3>FLIGHTS DETAILS</h3>
							<a href="addflight.jsp"><i class="fa-solid fa-paper-plane"
								style="margin-right: .5rem;"></i>Add New Flight</a>
						</div>
						<table>
							<thead>
								<tr>
									<th>#</th>
									<th>AIRLINE NAME</th>
									<th>FLIGHT NO</th>
									<th>NOE</th>
									<th>NOF</th>
									<th>NOB</th>
									<th>TNOS</th>
									<th>MAKE CHANGES</th>
								</tr>
							</thead>
							<tbody>
								<%
								AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
								List<Flights> list = dao.getFlights();
								for (Flights f : list) {
								%>
								<tr>
									<td><%=f.getFlightID()%></td>
									<td><%=f.getAirlineName()%></td>
									<td><%=f.getFlightNo()%></td>
									<td><%=f.getEconomySeats()%></td>
									<td><%=f.getBusinessSeats()%></td>
									<td><%=f.getFirstClassSeats()%></td>
									<td><%=f.getTotalSeats()%></td>
									<td class="td-team">
										<div class="but-1">
											<a href="EditFlight.jsp?flightId=<%=f.getFlightID()%>">Edit</a>
										</div>
										<div class="but-2">
											<a
												href="scheduleflight.jsp?fid=<%=f.getFlightID()%>&&aid=<%=f.getAirlineID()%>">Schedule</a>
										</div>
										<div class="but-3">
											<a
												href="delete_flight?fid=<%=f.getFlightID()%>&&aid=<%=f.getAirlineID()%>">Remove</a>
										</div>
									</td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</section>
		</main>
	</div>
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "failed") {
			swal("Failed", "Some error occurred..", "error");
		} else if (status == "success") {
			swal("Success", "Deleted Successfully..", "success");
		}
	</script>
</body>
</html>