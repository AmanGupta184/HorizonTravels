<%@page import="java.util.List"%>
<%@page import="com.entity.Data"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.DAO.AdminDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1">
<title>Admin Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style type="text/css">
main {
	margin-top: 60px;
	background: #f1f5f9;
	min-height: 91.8vh;
	padding: 1rem 3rem;
}

.dash-title {
	color: var(--color-dark);
	margin-bottom: 1rem;
}

.dash-cards {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	grid-column-gap: 3rem;
}

.card-single {
	background: #fff;
	border-radius: 7px;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
}

.card-body {
	padding: 1.3rem 1rem;
	display: flex;
	align-items: center;
}

.card-body span {
	font-size: 1.5rem;
	color: #777;
	padding-right: 1.4rem;
}

.card-body h5 {
	color: var(--text-grey);
	font-size: 1rem;
}

.card-body h4 {
	color: var(--color-dark);
	font-size: 1.1rem;
	margin-top: .2rem;
}

.card-footer {
	padding: .2rem 1rem;
	background: #f9fafc;
}

.card-footer span {
	color: var(--main-color);
}

.recent {
	margin-top: 3rem;
}

.activity-grid {
	display: grid;
	grid-template-columns: 100%;
	grid-column-gap: 1.5rem;
}

.activity-grid h3 {
	color: var(--text-black);
}

.graphBox {
	position: relative;
	width: 100%;
	padding: 10px;
	display: grid;
	grid-template-columns: 1fr 2fr;
	grid-gap: 30px;
	min-height: 200px;
}

.graphBox .box {
	position: relative;
	background: #fff;
	padding: 20px;
	width: 100%;
}

@media only screen and (max-width:860px) {
	.graphBox {
		grid-template-columns: 1fr;
		height: auto;
	}
	.dash-cards {
		grid-template-columns: repeat(2, 1fr);
	}
	.card-single {
		margin-bottom: 1rem;
	}
}

@media only screen and (max-width:600px) {
	.dash-cards {
		grid-template-columns: 100%;
	}
}

@media only screen and (max-width:450px) {
	main {
		padding-left: 1rem;
		padding-right: 1rem;
	}
}
</style>
</head>
<body>
	<%@include file="adminnav.jsp"%>
	<div class="main-content">
		<main>
			<h2 class="dash-title">OVERVIEW</h2>
			<div class="dash-cards">
				<div class="card-single">
					<div class="card-body">
						<span><i class="fa-solid fa-plane-up"></i></span>
						<%
						AdminDAOImpl dao = new AdminDAOImpl(DBConnect.getCon());
						Data d = dao.getAvailAir();
						%>
						<div>
							<h5>Available Airlines</h5>
							<h4><%=d.getAvailAirline()%></h4>
						</div>
					</div>
					<%
					d = dao.getLastAirline();
					if(d!=null){
					%>
					<div class="card-footer">
						<span><%=d.getLastAirline()%></span> <span
							style="color: var(--text-grey)">lastly added</span>
					</div>
					<%}else{ %>
					<div class="card-footer">
						<span>0</span> <span style="color: var(--text-grey)">lastly
							added</span>
					</div>
					<%} %>
				</div>
				<div class="card-single">
					<div class="card-body">
						<span><i class="fa-solid fa-plane-departure"></i></span>
						<%
						d = dao.getAvailFli();
						%>
						<div>
							<h5>Available Flights</h5>
							<h4><%=d.getAvailFlight()%></h4>
						</div>
					</div>
					<div class="card-footer">
						<%
						d = dao.getLastFli();
						if(d!=null){
						%>
						<span style="color: var(--text-grey)">Flight No:</span><span><%=d.getLastFlight()%></span>
						<span style="color: var(--text-grey)">lastly added</span>
						<%}else{ %>
						<span style="color: var(--text-grey)">Flight No:</span><span>0</span>
						<span style="color: var(--text-grey)">lastly added</span>
						<%} %>
					</div>
				</div>
				<div class="card-single">
					<div class="card-body">
						<span><i class="fa-solid fa-user-plus"></i></span>
						<%
						d = dao.getTotBooking();
						%>
						<div>
							<h5>Total Bookings</h5>
							<h4><%=d.getTotBooking()%></h4>
						</div>
					</div>
					<div class="card-footer">
						<span style="color: var(--text-grey)">Form</span> <span>18</span>
						<span style="color: var(--text-grey)">Registrations</span>
					</div>
				</div>
				<div class="card-single">
					<div class="card-body">
						<span><i class="fa-solid fa-money-bill"></i></span>
						<%
						d = dao.getTotalIncome();
						%>
						<div>
							<h5>Total Earnings</h5>
							<h4>
								INR
								<%=d.getTotIncome()%></h4>
						</div>
					</div>
					<div class="card-footer">
						<%
						d = dao.getTodayIncome();
						%>
						<span style="color: var(--text-grey)">Today's Earnings</span> <span>INR
							<%=d.getTodIncome()%></span>
					</div>
				</div>
			</div>
			<%
			List<Data> list = dao.getDataForPie();
			for (Data da : list) {
			%>
			<input type="hidden" name="AirlineName[]" id="AirlineName"
				value="<%=da.getLastAirline()%>"> <input type="hidden"
				name="NoOfFlight[]" id="NoOfFlight"
				value="<%=da.getAvailAirline()%>">
			<%
			}
			%>

			<%
			List<Data> list2 = dao.getDataForBar();
			for (Data da2 : list2) {
			%>
			<input type="hidden" name="status[]" id="status"
				value="<%=da2.getStatus()%>"> <input type="hidden"
				name="count[]" id="count" value="<%=da2.getCount()%>">
			<%
			}
			%>
			<section class="recent">
				<div class="activity-grid">
					<h3>Charts</h3>
					<div class="graphBox">
						<div class="box">
							<canvas id="myChart"></canvas>
						</div>
						<div class="box">
							<canvas id="myChart2"></canvas>
						</div>
					</div>
				</div>
			</section>
		</main>
	</div>
	<script>
		let NoOfFlight = document.getElementsByName('NoOfFlight[]');
		let no = [];
		for (let i = 0; i < NoOfFlight.length; i++) {
			no.push(NoOfFlight[i].value);
		}
		let AirlineName = document.getElementsByName('AirlineName[]');
		let name = [];
		for (let i = 0; i < AirlineName.length; i++) {
			name.push(AirlineName[i].value);
		}

		const ctx = document.getElementById('myChart');

		new Chart(ctx, {
			type : 'pie',
			data : {
				labels : name,
				datasets : [ {
					label : 'No of Flights per Airline',
					data : no,
					backgroundColor : [ 'rgba(255, 99, 132,1)',
							'rgba(255, 159, 64,1)', 'rgba(255, 205, 86,1)',
							'rgba(75, 192, 192,1)', 'rgba(54, 162, 235,1)',
							'rgba(153, 102, 255,1)', 'rgba(201, 203, 207,1)' ],
					borderColor : [ 'rgb(255, 99, 132)', 'rgb(255, 159, 64)',
							'rgb(255, 205, 86)', 'rgb(75, 192, 192)',
							'rgb(54, 162, 235)', 'rgb(153, 102, 255)',
							'rgb(201, 203, 207)' ],
					borderWidth : 1
				} ]
			},
			options : {
				scales : {
					y : {
						beginAtZero : true
					}
				}
			}
		});

		let status = document.getElementsByName('status[]');
		let stat = [];
		for (let i = 0; i < status.length; i++) {
			stat.push(status[i].value);
		}
		let count = document.getElementsByName('count[]');
		let co = [];
		for (let i = 0; i < count.length; i++) {
			co.push(count[i].value);
		}
		
		const ctx2 = document.getElementById('myChart2');

		new Chart(ctx2, {
			type : 'bar',
			data : {
				labels :stat,
				datasets : [ {
					label : 'Flight Status',
					data : co,
					backgroundColor : [ 'rgba(255, 99, 132,1)',
							'rgba(255, 159, 64,1)', 'rgba(255, 205, 86,1)', ],
					borderColor : [ 'rgb(255, 99, 132)', 'rgb(255, 159, 64)',
							'rgb(255, 205, 86)', ],
					borderWidth : 1
				} ]
			},
			options : {
				scales : {
					y : {
						beginAtZero : true
					}
				}
			}
		});
	</script>
	<script type="text/javascript">
		
	</script>
</body>
</html>