<%@page import="com.entity.*"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.DAO.UserDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<style type="text/css">
body {
	overflow: auto;
}

.hero-section {
	width: 100%;
	height: 250px;
}

.hero-section:before {
	background-color: rgba(0, 0, 0, 0.02);
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.hero-section .container-fluid {
	width: 1433px;
	height: 120px;
	margin-top: 70px;
	background-color: white;
	position: relative;
	border-radius: 16px;
}

#rows {
	width: 900px;
	height: 100px;
	border-radius: 16px;
	position: relative;
	margin-top: 20px;
	margin-left: 420px;
	background-color: white;
}

#rows:hover {
	box-shadow: 5px 5px 2px grey;
}

#filters {
	width: 400px;
	height: 500px;
	border-radius: 16px;
	position: absolute;
	margin-top: 20px;
	background-color: white;
}

#fs_header_bar {
	padding-top: 25px;
	padding-bottom: 0px;
}

#fs_page_title {
	font-size: 18px;
	font-weight: 500;
	margin-left: 39%;
	text-transform: uppercase;
}

.heading {
	font-size: 15px;
	font-weight: 500;
	text-transform: uppercase;
}

.btns {
	width: 100%;
	background: transparent;
	border-radius: 2px;
	padding: 3px;
	font-size: 14px;
	font-weight: 300;
	border-radius: 2px;
	margin-top: 15px;
	margin-bottom: 20px;
}

#fs_price_body .line {
	position: absolute;
	height: 2px;
	width: 45%;
	background: #007bff;
	left: 9%;
}

#fs_price_body .line:before {
	position: absolute;
	content: '';
	display: block;
	height: 6px;
	width: 6px;
	background: #007bff;
	border-radius: 50%;
	left: -2px;
	top: -2px;
}

#fs_price_body .line:after {
	position: absolute;
	content: '';
	display: block;
	height: 6px;
	width: 6px;
	background: #007bff;
	border-radius: 50%;
	right: -2px;
	bottom: -2px;
}

#fs_price_body ul {
	padding: 0px;
	margin-top: 20px;
	margin-bottom: 0px;
}

#fs_price_body ul li {
	list-style: none;
	display: inline-block;
	color: #d4d4d4;
}

#fs_price_body ul li:last-child {
	float: right;
}

#fs_price_body .line1 {
	height: 2px;
	width: 100%;
	background: #eee;
}

#fs_distance_body ul {
	padding: 0px;
	display: block;
	margin-top: 15px;
}

#fs_distance_body ul li {
	list-style: none;
	margin-bottom: 18px;
	font-size: 13px;
	font-weight: 400;
}

#fs_distance_body .text-right {
	float: right;
	height: 13px;
	width: 13px;
	border: 1px solid #999;
	margin-top: 3px;
}

#fs_distance_body li.active span:first-child {
	color: #007bff;
}

#fs_distance_body li.active span:last-child {
	background: #007bff;
	color: #fff;
	border: 1px solid #007bff;
	font-size: 10px;
	line-height: 100%;
	text-align: center;
}

#fs_time_body ul {
	padding: 0px;
	display: block;
	margin-top: 15px;
}

#fs_time_body ul li {
	list-style: none;
	margin-bottom: 18px;
	font-size: 13px;
	font-weight: 400;
}

#fs_time_body .text-right {
	float: right;
	height: 13px;
	width: 13px;
	border: 1px solid #999;
	margin-top: 3px;
}

#fs_time_body li.active span:first-child {
	color: #007bff;
}

#fs_time_body li.active span:last-child {
	background: #007bff;
	color: #fff;
	border: 1px solid #007bff;
	font-size: 10px;
	line-height: 100%;
	text-align: center;
}

#bookNow {
	float: right;
	margin-top: -1.5%;
	margin-right: 3%;
	text-decoration: none;
	font-weight: bold;
	text-decoration: none;
}

.data {
	display: flex;
	justify-content: center;
	position: relative;
}

.categories {
	background-color: #fff;
	width: 600px;
	border-radius: 10px;
	display: flex;
	justify-content: space-evenly;
	z-index: 2;
}

.categories a {
	font-size: 14px;
	padding: 15px;
	display: flex;
	color: black;
	align-items: center;
	flex-direction: column;
	text-decoration: none;
}

.categories a:hover {
	color: blue;
}

.select-menu {
	width: 340px;
}

.select-menu .select-btn {
	display: flex;
	height: 25px;
	padding: 20px;
	background: #fff;
	font-size: 16px;
	font-weight: 400;
	border-radius: 8px;
	align-items: center;
	justify-content: space-between;
	cursor: pointer;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

.select-btn i {
	font-size: 18px;
}

.select-menu .options {
	position: relative;
	padding: 20px;
	z-index: 1;
	border-radius: 8px;
	background: #fff;
	margin-top: 10px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
	display: none;
	border-radius: 8px;
}

.select-menu.active .options {
	display: block;
}

.options .option {
	display: flex;
	height: 55px;
	align-items: center;
	border-radius: 8px;
	justify-content: space-between;
	background: #fff;
}

#rooms2, #rooms3 {
	width: 30px;
	text-align: center;
}

#but {
	width: 30px;
	border: none;
	background: #fff;
}
</style>
</head>
<body>
	<%@include file="nav.jsp"%>
	<section class="hero-section">
		<div class="container-fluid">
			<br>
			<form>
				<input type="hidden" name="passCount" id="passengersCount">
				<div class="row">
					<div class="col">
						<label for="exampleDataList" class="form-label">From</label> <input
							name="from" class="form-control" list="datalistOptions"
							id="exampleDataList" placeholder="City"
							value="<%=request.getParameter("from")%>">
						<datalist id="datalistOptions">
							<option value="Mumbai">
							<option value="Delhi">
							<option value="Bangalore">
							<option value="Chennai">
							<option value="Gujarat">
						</datalist>
					</div>
					<div class="col">
						<label for="exampleDataList1" class="form-label">To</label> <input
							name="to" class="form-control" list="datalistOptions1"
							id="exampleDataList1" placeholder="City"
							value="<%=request.getParameter("to")%>">
						<datalist id="datalistOptions1">
							<option value="Mumbai">
							<option value="Delhi">
							<option value="Bangalore">
							<option value="Chennai">
							<option value="Gujarat">
						</datalist>
					</div>
					<div class="col">
						<label for="session-date" class="form-label">Date</label> <input
							type="date" class="form-control depart" name="date"
							id="session-date" value="<%=request.getParameter("date")%>">
					</div>
					<div class="col">
						<label for="classes" class="form-label">Class</label><input
							name="classes" class="form-control" list="datalistOptions3"
							id="exampleDataList" placeholder="City"
							value="<%=request.getParameter("classes")%>">
						<datalist id="datalistOptions3">
							<option value="Economy">
							<option value="Business">
							<option value="FirstClass">
						</datalist>
					</div>
					<div class="col">
						<div class="select-menu">
							<label for="session-date" class="form-label">Passengers</label>
							<div class="select-btn">
								<span class="sBtn-text">Select an option</span> <i
									class="bx bx-chevron-down"></i>
							</div>
							<ul class="options">
								<li class="option"><label for="rooms">Adults</label>
									<button id="but" style="margin-left: 20px;"
										onclick="decrementCount('rooms2','adult')">
										<i class="fa-solid fa-minus"></i>
									</button> <input type="text" name="adult" id="rooms2"
									value="<%=request.getParameter("adult")%>">
									<button id="but" onclick="incrementCount('rooms2','Adult')">
										<i class="fa-solid fa-plus"></i>
									</button></li>
								<li class="option"><label for="rooms">Childrens</label>
									<button id="but" onclick="decrementCount('rooms3','child')">
										<i class="fa-solid fa-minus"></i>
									</button> <input type="text" id="rooms3" name="child"
									value="<%=request.getParameter("child")%>">
									<button id="but" onclick="incrementCount('rooms3','Child')">
										<i class="fa-solid fa-plus"></i>
									</button></li>
							</ul>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="container">
			<div class="row" id="filters">
				<section class="col-12" id="fs_header_bar">
					<div class="row">
						<div class="col-12" id="fs_page_title">Filter</div>
					</div>
					<section class="col-12" id="fs_price_body">
						<div>
							<span class="heading">By Price</span>
							<div class="row">
								<div class="col-4">
									<button class="btn btns"
										style="border: 1px solid #007bff; color: #007bff;"
										type="button">&dollar;</button>
								</div>
								<div class="col-4 active">
									<button class="btn btns"
										style="border: 1px solid #007bff; color: #007bff;"
										type="button">&dollar;&dollar;</button>
								</div>
								<div class="col-4">
									<button class="btn btns"
										style="border: 1px solid #007bff; color: #007bff;"
										type="button">&dollar;&dollar;&dollar;</button>
								</div>
							</div>
							<div class="line"></div>
							<div class="line1"></div>
							<ul>
								<li>$25</li>
								<li>$50</li>
							</ul>
						</div>
					</section>
					<section class="col-12" id="fs_distance_body">
						<span class="heading">By Distance</span>
						<div class="contents">
							<ul>
								<li><span>From 1km to 3km</span> <span class="text-right"></span></li>
								<li class="active"><span>From 4km to 7km</span><span
									class="text-right"><i class="fa fa-check"></i></span></li>
								<li><span>From 8km to 12km</span><span class="text-right"></span></li>
							</ul>
						</div>
					</section>
					<section class="col-12" id="fs_time_body">
						<span class="heading">By Time</span>
						<div class="contents">
							<ul>
								<li><span>Less than 30 Min</span> <span class="text-right"></span></li>
								<li><span>30 Min - 45 Min</span><span class="text-right"></span></li>
								<li class="active"><span>45 Min- 55 Min</span><span class="text-right"><i
										class="fa fa-check"></i></span></li>
							</ul>
						</div>
					</section>
				</section>
			</div>
			<div
				style="overflow-y: scroll; height: 500px; width: 100%; overflow-x: hidden">
				<%
				String from = request.getParameter("from");
				String to = request.getParameter("to");
				String date = request.getParameter("date");
				String category = request.getParameter("classes");
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getCon());
				List<ScheduleFlight> list = dao.getFlightBySearch(from, to, date);
				for (ScheduleFlight sf : list) {
				%>
				<div class="row">
					<div class="col-md-4" id="rows">
						<div class="row">
							<span id="FlightName" style="margin: 5px;"><%=sf.getFlightNo()%></span>
						</div>
						<div class="row">
							<div class="col-md-3">
								<label id="ArrivalTime" style="margin-left: 70px;"><%=sf.getDepartureTime()%></label>
							</div>
							<div class="col-md-3">
								<label id="Difference" class="border-bottom"
									style="margin-left: 70px;">2h 15m</label>
							</div>
							<div class="col-md-3">
								<label id="DepartureTime" style="margin-left: 70px;"><%=sf.getArrivalTime()%></label>
							</div>
							<%
							if (category.equalsIgnoreCase("Economy")) {
							%>
							<div class="col-md-3">
								<label id="amount" style="margin-left: 70px; font-weight: bold;">₹
									<%=sf.getEconomyCost()%></label>
							</div>
							<%
							} else if (category.equalsIgnoreCase("Business")) {
							%>
							<div class="col-md-3">
								<label id="amount" style="margin-left: 70px; font-weight: bold;">₹
									<%=sf.getBusinessCost()%></label>
							</div>
							<%
							} else if (category.equalsIgnoreCase("FirstClass")) {
							%>
							<div class="col-md-3">
								<label id="amount" style="margin-left: 70px; font-weight: bold;">₹
									<%=sf.getFirstClassCost()%></label>
							</div>
							<%
							}
							%>
						</div>
						<div class="row">
							<div class="col-md-3">
								<label id="Source" style="margin-left: 70px;"><%=sf.getSource()%></label>
							</div>
							<div class="col-md-3">
								<label id="Destination" style="margin-left: 70px;">Non-Stop</label>
							</div>
							<div class="col-md-3">
								<label id="Destination" style="margin-left: 70px;"><%=sf.getDestination()%></label>
							</div>
						</div>
						<c:if test="${empty userobj}">
							<div class="row">
								<div class="col">
									<a href="login.jsp" id="bookNow">Book Now</a>
								</div>
							</div>
						</c:if>
						<c:if test="${not empty userobj}">
							<div class="row">
								<div class="col">
									<a
										href="Payment.jsp?id=<%=sf.getFlightID()%>&&date=<%=request.getParameter("date")%>&&count=<%=request.getParameter("count")%>&&category=<%=request.getParameter("classes")%>"
										id="bookNow">Book Now</a>
								</div>
							</div>
						</c:if>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</div>
	</section>
	<footer style="margin-top: 29%; background-color: #2A2A2A;">
		<%@include file="footer.jsp"%>
	</footer>
	<script type="text/javascript">
	const optionMenu=document.querySelector('.select-menu'),
	selectBtn=optionMenu.querySelector('.select-btn'),
	options=optionMenu.querySelectorAll('.option'),
	sBtn_text=optionMenu.querySelector('.sBtn-text');
	
	selectBtn.addEventListener("click",() => optionMenu.classList.toggle("active"));
	
	let inp = document.getElementById('rooms2').value;
	let inp2 = document.getElementById('rooms3').value;
	sBtn_text.innerText = inp + " Adult, " + inp2 + " Child";

	function incrementCount(id, name) {
		event.preventDefault();
		const input = document.getElementById(id);
		const value = parseInt(input.value);
		input.value = value + 1;
		let inp = document.getElementById('rooms2').value;
		let inp2 = document.getElementById('rooms3').value;
		sBtn_text.innerText = inp + " Adult, " + inp2 + " Child";
	}

	function decrementCount(id, name) {
		event.preventDefault();
		const input = document.getElementById(id);
		const value = parseInt(input.value);
		if (value > 0) {
			input.value = value - 1;
			let inp = document.getElementById('rooms2').value;
			let inp2 = document.getElementById('rooms3').value;
			sBtn_text.innerText = inp + " Adult, " + inp2 + " Child";
		}
	}
	</script>
</body>
</html>