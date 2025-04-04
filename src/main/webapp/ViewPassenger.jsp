<%@page import="com.entity.Data"%>
<%@page import="com.entity.Passengers"%>
<%@page import="com.entity.ScheduleFlight"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.DAO.AdminDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Passenger List</title>
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
	margin-top: -3%;
}

.activity-card  .main-title {
	display: flex;
	align-items: center;
}

.activity-card .main-title a {
	color: black;
	font-weight: 700;
	margin-left: 650px;
	padding: .5rem;
}

.activity-card .title a {
	background: yellow;
	color: black;
	font-weight: 700;
	margin-left: 795px;
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
	background: red;
	padding: .5rem;
	margin-right: .5rem;
}

.but-3 {
	background: #007bff;
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
						<%
						Integer FlightID = Integer.parseInt(request.getParameter("fid"));
						Integer FlightNo = Integer.parseInt(request.getParameter("fno"));
						AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
						Data d = dao.getPassengerPerFlight(FlightID, FlightNo);
						%>
						<div class="main-title">
							<h3>
								TOTAL BOOKINGS :
								<%=d.getCount()%>
								/ 50
							</h3>
							<a href="scheduleflight.jsp">FLIGHT NO :<%=request.getParameter("fno")%></a>
						</div>
						<div class="title">
							<h3>PASSENGER LIST</h3>
							<a href="scheduleflight.jsp"><i
								class="fa-solid fa-file-export" style="margin-right: .5rem;"></i>EXPORT</a>
						</div>
						<table>
							<thead>
								<tr>
									<th>#</th>
									<th>NAME</th>
									<th>MOBILE NO</th>
									<th>DOB</th>
									<th>GENDER</th>
									<th>PRN</th>
								</tr>
							</thead>
							<tbody>
								<%
								List<Passengers> list = dao.getPassengerById(FlightID, FlightNo);
								for (Passengers pa : list) {
								%>
								<tr>
									<td><%=pa.getPassengerID()%></td>
									<td>Mr.<%=pa.getName()%></td>
									<td><%=pa.getMobileNo()%></td>
									<td><%=pa.getDOB()%></td>
									<td><%=pa.getGender()%></td>
									<td><%=pa.getPRN()%></td>
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