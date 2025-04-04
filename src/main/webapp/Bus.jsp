<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bus page</title>
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
	background: url('image/bus.jpg') no-repeat center;
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
	justify-content: center;
	margin-top: 30%;
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

#today, #tomorrow, #after {
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

h1 {
	position: absolute;
	top: 25%;
	left: 37%;
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
		<h1 style="color: white;">Bus Ticket Booking</h1>
		<div class="container align-items-center justify-content-center">
			<div class="data">
				<div class="tickets">
					<div class="ticket-type"></div>
					<form method="post" action="flightSearch">
						<div class="row mt-2">
							<div class="col-md-6" style="padding-left: 35px;">
								<label for="exampleDataList" class="form-label">From</label> <input
									name="from" class="form-control" list="datalistOptions"
									id="exampleDataList" placeholder="Enter Destination Name">
								<datalist id="datalistOptions">
									<option value="Chatrapati Shivaji Maharaj Terminus">
									<option value="Lokmanya Tilak Terminus">
									<option value="Bandra Terminus">
									<option value="New Delhi Railway Station">
									<option value="Chandigarh Railway Station">
								</datalist>
							</div>
							<div class="col-md-6">
								<label for="exampleDataList1" class="form-label">To</label> <input
									name="from" class="form-control" list="datalistOptions1"
									id="exampleDataList1" placeholder="Enter Destination Name">
								<datalist id="datalistOptions1">
									<option value="Chatrapati Shivaji Maharaj Terminus">
									<option value="Lokmanya Tilak Terminus">
									<option value="Bandra Terminus">
									<option value="New Delhi Railway Station">
									<option value="Chandigarh Railway Station">
								</datalist>
							</div>
						</div>
						<div class="row mt-2">
							<div class="col-md-6" style="padding-left: 35px;">
								<label for="session-date" class="form-label">Travel Date</label>
								<input type="date" class="form-control travel-date"
									name="Check-in" id="session-date">
							</div>
							<div class="col-md-6 d-flex" style="margin-top: 40px;">
								<div class="col-md-3" style="margin-left: 20px;">
									<input type="radio" name="tatkal" id="today" checked><label
										for="today" id="today">&ensp;Today</label>
								</div>
								<div class="col-md-3">
									<input type="radio" name="tatkal" id="tomorrow"><label
										for="tomorrow" id="tomorrow">&ensp;Tomorrow</label>
								</div>
								<div class="col-md-4">
									<input type="radio" name="tatkal" id="after"><label
										for="after" id="after">&ensp;Day After Tomorrow</label>
								</div>
							</div>
						</div>
						<input type="submit" class="search-button mt-5" value="Search">
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
						&emsp;Book Comfortable Bus with<label
							style="margin-left: 15px; font-size: 14px; font-weight: 500;">Personalized
							Itineraries</label>
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
						flights,hotels & bus</p>
					<a href="#"
						style="float: right; margin-top: 17%; text-decoration: none; font-weight: bold;">Book
						Now</a>
				</div>
				<div class="col-md-4 pt-3" style="margin-left: 15px;" id="offer">
					<img
						src="https://promos.makemytrip.com/notification/xhdpi//icici-116x116-09022023.jpg?im=Resize=(134,134)"
						id="offimage"> <span id="text">SPEND.EARN.TRAVEL </span>
					<hr style="margin-left: 43%; color: red; margin-right: 35%;">
					<span style="font-size: 14px; font-weight: 500;">&emsp;Sign
						up today & enjoy<label>&emsp;benefits worth more than Rs.</label>&emsp;90,000.
					</span> <a href="#"
						style="float: right; margin-top: 14%; text-decoration: none; font-weight: bold;">Book
						Now</a>
				</div>
			</div>
		</div>
		<div class="heading">
			<h2>Popular Destinations</h2>
		</div>
		<div class="gallery-wrap">
			<a id="backBtn"><i class="fas fa-backward"></i></a>
			<div class="gallery mt-5">
				<div>
					<span><img
						src="https://r2imghtlak.ibcdn.com/r2-mmt-htl-image/htl-imgs/20110105123332348-0313439a2d4311eab8550242ac11000a.jpg"
						alt=""><span class="text">The Ontime Hotel</span></span><span><img
						src="https://r1imghtlak.ibcdn.com/54f38f3ed46611e9a30a0242ac110002.jpg"
						alt=""><span class="text">Hotel Mantra</span></span> <span><img
						src="https://r2imghtlak.ibcdn.com/r2-mmt-htl-image/htl-imgs/201506291505304633-c39bb914b28f11e9be6b0242ac140005.jpg"
						alt=""><span class="text">Hotel Oasis </span></span>
				</div>
				<div>
					<span><img
						src="https://r1imghtlak.ibcdn.com/52e47a84740011eabe620242ac110002.jpg"
						alt=""><span class="text">Hotel New Artus Inn</span></span> <span><img
						src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/de/80/d9/hotel-novotel-new-delhi.jpg?w=300&h=300&s=1"
						alt=""><span class="text"> Hotel Novotel</span></span> <span><img
						src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/02/c6/bd/a1/ajanta-hotel.jpg?w=300&h=300&s=1"
						alt=""><span class="text">Hotel Ajanta</span></span>
				</div>
			</div>
			<a id="nextBtn"><i class="fas fa-forward"></i></a>
		</div>
		<div style="margin-top: 5%; background-color: #2A2A2A;">
			<%@include file="footer.jsp"%>
		</div>
	</section>
	<script type="text/javascript">
	let scroll=document.querySelector(".gallery");
	let backBtn=document.getElementById("backBtn");
	let nextBtn=document.getElementById("nextBtn");
	
	scroll.addEventListener("wheel",(evt)=>{
		evt.preventDefault();
		scroll.scrollLeft+=evt.deltaY;
	});
	
	nextBtn.addEventListener("click",()=>{
		scroll.scrollLeft+=1100;
	});
	
	backBtn.addEventListener("click",()=>{
		scroll.scrollLeft-=1100;
	});
	
		if (document.getElementById('today').checked == true) {
			var now = new Date();
			var day = ("0" + now.getDate()).slice(-2);
			var month = ("0" + (now.getMonth() + 1)).slice(-2);
			var today = now.getFullYear() + "-" + (month) + "-" + (day);
			$('#session-date').val(today);
		}
		$(document).ready(
				function() {
					$('input[type="radio"]').on(
							'click',
							function() {
								if ($(this).attr('id') == 'today') {
									var now = new Date();
									var day = ("0" + now.getDate()).slice(-2);
									var month = ("0" + (now.getMonth() + 1))
											.slice(-2);
									var today = now.getFullYear() + "-"
											+ (month) + "-" + (day);
									$('#session-date').val(today);
								}
							});
				});
		$(document).ready(
				function() {
					$('input[type="radio"]').on(
							'change',
							function() {
								if ($(this).attr('id') == 'tomorrow') {
									var now = new Date();
									var day = ("0" + (now.getDate() + 1))
											.slice(-2);
									var month = ("0" + (now.getMonth() + 1))
											.slice(-2);
									var today = now.getFullYear() + "-"
											+ (month) + "-" + (day);
									$('#session-date').val(today);
								}
							});
				});
		$(document).ready(
				function() {
					$('input[type="radio"]').on(
							'change',
							function() {
								if ($(this).attr('id') == 'after') {
									var now = new Date();
									var day = ("0" + (now.getDate() + 2))
											.slice(-2);
									var month = ("0" + (now.getMonth() + 1))
											.slice(-2);
									var today = now.getFullYear() + "-"
											+ (month) + "-" + (day);
									$('#session-date').val(today);
								}
							});
				});
	</script>
</body>
</html>