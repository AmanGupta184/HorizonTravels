<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ferry Page</title>
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
	background: url('image/cruise.jpg') no-repeat center;
	background-size: cover;
	width: 100%;
	height: 600px;
}

.hero-section:before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.hero-section .container {
	width: 1200px;
	position: relative;
	top: 65%;
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
	padding: 10px;
	padding-top: 20px;
	display: flex;
	align-items: center;
	flex-direction: column;
	text-decoration: none;
}

.fas {
	font-size: 20px;
	margin-bottom: 5px;
	color: rgb(107, 107, 107);
}

.tickets {
	background-color: #F5F3F3;
	width: 1200px;
	height: 300px;
	position: absolute;
	top: 30px;
	z-index: 1;
	border-radius: 10px;
	padding: 20px;
}

.heading {
	display: flex;
	justify-content: flex-start;
	margin-top: 30%;
	margin-left: 8%;
}

.gallery {
	width: 1100px;
	display: flex;
	overflow-x: scroll;
}

.gallery div {
	width: 100%;
	display: grid;
	grid-template-columns: auto auto auto;
	grid-gap: 20px;
	padding: 10px;
	flex: none;
}

.gallery div img {
	width: 100%;
	height: 300px;
	filter: grayscale(10%);
	transition: transform 0.5s;
}

.gallery div img:hover {
	filter: grayscale(0);
	cursor: pointer;
	transform: scale(1.1);
}

.gallery::-webkit-scrollbar {
	display: none;
}

.gallery-wrap {
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto;
}

#backBtn, #nextBtn {
	width: 50px;
	cursor: pointer;
	margin: 40px;
}

.text {
	display: flex;
	justify-content: center;
	font-size: 20px;
	font-weight: bold;
	margin-top: 10px;
}

.ticket-type {
	margin-top: 15px;
}

input#session-date {
	position: relative;
	overflow: hidden;
}

input#session-date::-webkit-calendar-picker-indicator {
	display: block;
	top: 0;
	left: 0;
	background: #0000;
	position: absolute;
	transform: scale(12)
}

#one-way, #round-trip {
	cursor: pointer;
}

.form-label {
	font-weight: bold;
}

.search-button {
	width: 200px;
	height: 44px;
	background-color: #007bff;
	color: white;
	border-radius: 35px;
	border: 0;
	position: relative;
	left: 41%;
	z-index: 2;
}

.search-button:hover {
	background-color: #0069d9;
}

.myDiv {
	display: none;
}

h1 {
	position: absolute;
	top: 25%;
	left: 40%;
}

#image {
	height: 300px;
	width: 285px;
}

#offers {
	margin-top: 30%;
	width: 1200px;
	height: 300px;
	background-color: #CECECE;
	border-radius: 10px;
	padding: 20px;
}

#offer {
	width: 380px;
	height: 200px;
	background: #FAF9F6;
	border-radius: 8px;
	margin-left: 6px;
}

#offer:hover {
	box-shadow: 10px 10px 5px grey;
}

#offimage {
	float: left;
	border-radius: 10px;
	margin-left: 3px;
}

#text {
	font-weight: bold;
	margin-left: 15px;
}
</style>
</head>
<body>
	<%@include file="nav.jsp"%>
	<section class="hero-section">
		<h1 style="color: white;">Ferry Book Ticket</h1>
		<div class="container align-items-center justify-content-center">
			<div class="data">
				<div class="tickets">
					<div class="ticket-type"></div>
					<form method="post" action="flightSearch">
						<div class="row mt-2">
							<div class="col-md-6" style="padding-left: 35px;">
								<label for="exampleDataList" class="form-label">To</label> <input
									name="to" class="form-control" list="datalistOptions"
									id="exampleDataList" placeholder="City">
								<datalist id="datalistOptions">
									<option value="Mumbai">
									<option value="Delhi">
									<option value="Banglore">
									<option value="Chennai">
									<option value="Gujarat">
								</datalist>
							</div>
							<div class="col-md-6">
								<label for="exampleDataList1" class="form-label">From</label> <input
									name="from" class="form-control" list="datalistOptions1"
									id="exampleDataList1" placeholder="City">
								<datalist id="datalistOptions1">
									<option value="Mumbai">
									<option value="Delhi">
									<option value="Banglore">
									<option value="Chennai">
									<option value="Gujarat">
								</datalist>
							</div>
						</div>
						<div class="row mt-2">
							<div class="col-md-4" style="padding-left: 35px;">
								<label for="session-date" class="form-label">Date</label> <input
									type="date" class="form-control depart" name="date"
									id="session-date">
							</div>
							<div class="col-md-4">
								<label for="return-date" class="form-label">Return Date</label>
								<input type="date" class="form-control return" name="date"
									id="return-date">
							</div>
							<div class="col-md-4">
								<label for="session-date" class="form-label">Passengers</label>
								<input type="number" name="no" class="form-control"
									name="number" placeholder="Number">
							</div>
						</div>
						<input type="submit" class="search-button mt-4" value="Search">
					</form>
				</div>
			</div>
		</div>
		<div class="container" id="offers">
			<h3 class="font-weight-bold">Offers</h3>
			<div class="row mt-3">
				<div class="col-md-4 pt-3" id="offer">
					<img
						src="https://promos.makemytrip.com/appfest/xhdpi//Desktop-CharDham-12Jun.jpg?im=Resize=(134,134)"
						id="offimage"> <span id="text">For your Char Dham
						Yatra </span>
					<hr style="margin-left: 43%; color: red; margin-right: 35%;">
					<p style="font-size: 14px; font-weight: 500;">
						&emsp;Book Comfortable Cabs,Bus<label
							style="margin-left: 15px; font-size: 14px; font-weight: 500;">with
							Personalized Itineraries</label>
					</p>
					<a href="#"
						style="float: right; margin-top: 11%; text-decoration: none; font-weight: bold;">Book
						Now</a>
				</div>
				<div class="col-md-4 pt-3" style="margin-left: 15px;" id="offer">
					<img
						src="https://promos.makemytrip.com/notification/xhdpi//116X116-CanaraBank-28092022.jpg?im=Resize=(134,134)"
						id="offimage"> <span id="text">Grab up to 20% OFF </span>
					<hr style="margin-left: 43%; color: red; margin-right: 35%;">
					<p style="font-size: 14px; font-weight: 500;">&emsp;On
						flights,hotels,cabs & bus</p>
					<a href="#"
						style="float: right; margin-top: 17%; text-decoration: none; font-weight: bold;">Book
						Now</a>
				</div>
				<div class="col-md-4 pt-3" style="margin-left: 15px;" id="offer">
					<img
						src="https://promos.makemytrip.com/appfest/xhdpi//Desktop-Ayodhya-28Dec.jpg?im=Resize=(134,134)"
						id="offimage"> <span id="text">AYODHYA SPECIAL: </span>
					<hr style="margin-left: 43%; color: red; margin-right: 35%;">
					<span style="font-size: 14px; font-weight: 500;">&emsp;Enjoy
						EPIC Offers on booking <label>&emsp;buses,cabs & trains
							with us.</label>
					</span> <a href="#"
						style="float: right; margin-top: 14%; text-decoration: none; font-weight: bold;">Book
						Now</a>
				</div>
			</div>
		</div>
		<div class="heading">
			<h3>Where to Go</h3>
		</div>
		<div class="row"
			style="margin-left: 130px; margin-right: 130px; cursor: pointer;">
			<div class="col-md-3 mt-2">
				<img
					src="https://img.12go.com/0/fill/816/816/ce/1/plain/s3://12go-web-static/static/images/upload-media/4105.jpeg"
					alt="" id="image">
				<p style="font-weight: bold; margin-left: -20px;">Bangkok →
					Pattaya</p>
				<label style="margin-left: -20px;">From Rs.379</label>
			</div>
			<div class="col-md-3 mt-2">
				<img
					src="https://img.12go.com/0/fill/816/816/ce/1/plain/s3://12go-web-static/static/images/upload-media/4087.jpeg"
					alt="" id="image">
				<p style="font-weight: bold; margin-left: -20px;">Bangkok →
					Chiang Mai</p>
				<label style="margin-left: -20px;">From Rs.684</label>
			</div>
			<div class="col-md-3 mt-2">
				<img
					src="https://img.12go.com/0/fill/816/816/ce/1/plain/s3://12go-web-static/static/images/upload-media/4091.jpeg"
					alt="" id="image">
				<p style="font-weight: bold; margin-left: -20px;">Bangkok →
					Phuket</p>
				<label style="margin-left: -20px;">From Rs.1813</label>
			</div>
			<div class="col-md-3 mt-2">
				<img
					src="https://img.12go.com/0/fill/816/816/ce/1/plain/s3://12go-web-static/static/images/upload-media/4089.jpeg"
					alt="" id="image">
				<p style="font-weight: bold; margin-left: -20px;">Bangkok → Koh
					Samui</p>
				<label style="margin-left: -20px;">From Rs.2197</label>
			</div>
		</div>
		<div style="margin-top: 5%; background-color: #2A2A2A;">
			<%@include file="footer.jsp"%>
		</div>
	</section>
	<script type="text/javascript">
		var now = new Date();
		var day = ("0" + now.getDate()).slice(-2);
		var month = ("0" + (now.getMonth() + 1)).slice(-2);
		var after = ("0" + (now.getDate() + 2)).slice(-2);
		var today = now.getFullYear() + "-" + (month) + "-" + (day);
		$('.depart').val(today);

		var tomorrow = now.getFullYear() + "-" + (month) + "-" + (after);
		$('.return').val(tomorrow);
	</script>
</body>
</html>