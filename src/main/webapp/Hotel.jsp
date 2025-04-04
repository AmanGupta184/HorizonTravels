<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Page</title>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.1/css/boxicons.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style type="text/css">
body {
	overflow: auto;
}

.hero-section {
	background: url('image/hotel2.jpg') no-repeat center;
	background-size: cover;
	width: 100%;
	height: 600px;
}

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
	width: 700px;
	height: 350px;
	position: absolute;
	z-index: 1;
	border-radius: 10px;
	padding: 20px;
}

.ticket-type {
	margin-top: 30px;
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
	position: absolute;
	left: 34%;
	top:78%;
}

.search-button:hover {
	background-color: #0069d9;
}

.select-menu {
	width: 340px;
	margin-left: 25px;
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

#rooms, #rooms2, #rooms3 {
	width: 30px;
	text-align: center;
}

#but {
	width: 30px;
	border: none;
	background: #fff;
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

h1 {
	position: absolute;
	top: 25%;
	left: 35%;
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
		<h1 style="color: white;">Book Hotels & Homestays</h1>
		<div class="container align-items-center justify-content-center">
			<div class="data">
				<div class="tickets">
					<div class="ticket-type"></div>
					<form method="post" action="flightSearch">
						<div class="row mt-2">
							<div class="col" style="padding-left: 35px;">
								<label for="exampleDataList" class="form-label">Where</label> <input
									name="to" class="form-control" list="datalistOptions"
									id="exampleDataList"
									placeholder="Area, Landmark or Property Name">
								<datalist id="datalistOptions">
									<option value="Mumbai">
									<option value="Delhi">
									<option value="Banglore">
									<option value="Chennai">
									<option value="Gujarat">
								</datalist>
							</div>
						</div>
						<div class="row mt-2">
							<div class="col-md-6" style="padding-left: 35px;">
								<label for="session-date" class="form-label">Check-in</label> <input
									type="date" class="form-control check-in" name="Check-in"
									id="session-date">
							</div>
							<div class="col-md-6" style="padding-left: 35px;">
								<label for="session-date" class="form-label">Check-out</label> <input
									type="date" class="form-control check-out" name="Check-out"
									id="session-date">
							</div>
						</div>
						<div class="row mt-2">
							<div class="col">
								<div class="select-menu">
									<label for="session-date" class="form-label">Guests &
										Rooms</label>
									<div class="select-btn">
										<span class="sBtn-text">Select an option</span> <i
											class="bx bx-chevron-down"></i>
									</div>
									<ul class="options">
										<li class="option"><label for="rooms">Rooms</label>
											<button id="but" style="margin-left: 20px;"
												onclick="decrementCount('rooms')">
												<i class="fa-solid fa-minus"></i>
											</button> <input type="text" id="rooms" value="1">
											<button id="but" onclick="incrementCount('rooms')">
												<i class="fa-solid fa-plus"></i>
											</button></li>
										<li class="option"><label for="rooms">Adults</label>
											<button id="but" style="margin-left: 20px;"
												onclick="decrementCount('rooms2')">
												<i class="fa-solid fa-minus"></i>
											</button> <input type="text" id="rooms2" value="1">
											<button id="but" onclick="incrementCount('rooms2')">
												<i class="fa-solid fa-plus"></i>
											</button></li>
										<li class="option"><label for="rooms">Childrens</label>
											<button id="but" onclick="decrementCount('rooms3')">
												<i class="fa-solid fa-minus"></i>
											</button> <input type="text" id="rooms3" value="0">
											<button id="but" onclick="incrementCount('rooms3')">
												<i class="fa-solid fa-plus"></i>
											</button></li>
									</ul>
								</div>
							</div>
							<div class="col">
								<input type="submit" class="search-button mt-3" value="Search">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="container" id="offers">
			<h3 class="font-weight-bold">Offers</h3>
			<div class="row mt-3">
				<div class="col-md-4 pt-3" id="offer">
					<img
						src="https://promos.makemytrip.com/notification/xhdpi//116X116-oyo-16082023.jpg?im=Resize=(134,134)"
						id="offimage"> <span id="text">Book Comfortable Stays
						<label style="margin-left: 15px;">at OYO Hotels</label>
					</span>
					<hr style="margin-left: 43%; color: red; margin-right: 35%;">
					<label
						style="margin-left: 15px; font-size: 14px; font-weight: 500;">with
						FLAT 15% OFF.</label> <a href="#"
						style="float: right; margin-top: 13%; text-decoration: none; font-weight: bold;">Book
						Now</a>
				</div>
				<div class="col-md-4 pt-3" style="margin-left: 15px;" id="offer">
					<img
						src="https://promos.makemytrip.com/notification/xhdpi//116X116-bw-08052024.jpg?im=Resize=(134,134)"
						id="offimage"> <span id="text">PRICE DROP ALERT:</span>
					<hr style="margin-left: 43%; color: red; margin-right: 35%;">
					<p style="font-size: 14px; font-weight: 500;">&emsp;Up tp 25%
						OFF on Western &emsp;Hotels</p>
					<a href="#"
						style="float: right; margin-top: 10%; text-decoration: none; font-weight: bold;">Book
						Now</a>
				</div>
				<div class="col-md-4 pt-3" style="margin-left: 15px;" id="offer">
					<img
						src="https://promos.makemytrip.com/notification/xhdpi//116X116-axis-02042024.jpg?im=Resize=(134,134)"
						id="offimage"> <span id="text">Get FLAT 15% OFF on <label
						style="margin-left: 15px;">International Hotels</label>
					</span>
					<hr style="margin-left: 43%; color: red; margin-right: 35%;">
					<p style="font-size: 14px; font-weight: 500;">&emsp;and book a
						comfy stay with &emsp;big savings!</p>
					<a href="#"
						style="float: right; margin-top: 4%; text-decoration: none; font-weight: bold;">Book
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
	
		function incrementCount(id) {
			event.preventDefault();
			const input = document.getElementById(id);
			const value = parseInt(input.value);
			input.value = value + 1;
		}

		function decrementCount(id) {
			event.preventDefault();
			const input = document.getElementById(id);
			const value = parseInt(input.value);
			if (value > 0) {
				input.value = value - 1;
			}
		}
		const optionMenu=document.querySelector('.select-menu'),
		selectBtn=optionMenu.querySelector('.select-btn'),
		options=optionMenu.querySelectorAll('.option'),
		sBtn_text=optionMenu.querySelector('.sBtn-text');
		
		selectBtn.addEventListener("click",() => optionMenu.classList.toggle("active"));
		
		var now = new Date();
		var day = ("0" + now.getDate()).slice(-2);
		var month = ("0" + (now.getMonth() + 1)).slice(-2);
		var after = ("0" + (now.getDate() + 1)).slice(-2);
		var today = now.getFullYear()+"-"+(month)+"-"+(day) ;
		$('.check-in').val(today);
		
		var tomorrow = now.getFullYear()+"-"+(month)+"-"+(after) ;
		$('.check-out').val(tomorrow);
	</script>
</body>
</html>