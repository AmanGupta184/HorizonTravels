<%@page import="com.entity.Passengers"%>
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
	margin-left: 840px;
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
</style>
</head>
<body>
	<%@include file="adminnav.jsp"%>
	<div class="main-content">
		<main>
			<section class="recent">
				<div class="activity-grid">
					<div class="activity-card">
						<div class="title">
							<h3>PASSENGERS</h3>
							<a href=""><i class="fa-solid fa-file-export"
								style="margin-right: .5rem;"></i>Export</a>
						</div>
						<table>
							<thead>
								<tr>
									<th>#</th>
									<th>NAME</th>
									<th>MOBILE NO</th>
									<th>DOB</th>
									<th>GENDER</th>
									<th>BOOKING</th>
								</tr>
							</thead>
							<tbody>
								<%
								AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
								List<Passengers> list = dao.getAllPassengers();
								for (Passengers pa : list) {
								%>
								<tr>
									<td><%=pa.getPassengerID()%></td>
									<td>Mr.<%=pa.getName()%></td>
									<td><%=pa.getMobileNo()%></td>
									<td><%=pa.getDOB()%></td>
									<td><%=pa.getGender()%></td>
									<td><%=pa.getSeatNo()%>:<%=pa.getSrc()%>-><%=pa.getDest()%></td>
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
</body>
</html>