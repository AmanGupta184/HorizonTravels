<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GAMAN TRAVELS-#1 No one Travel Agencies</title>
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
<script>
$(document).ready(function() {
	$('input[type="radio"]').on('change',function() {
		if($(this).attr('id') == 'one-way') {
			   $("#showOne").show();
			}else{
				$("#showOne").hide();
			}
	});
	});
$(document).ready(function() {
	   $('input[type="radio"]').on('change',function() {
	       if($(this).attr('id') == 'round-trip') {
	            $('#showTwo').show();           
	       }else {
	            $('#showTwo').hide();   
	       }
	   });
	});
$(function(){
    var dtToday = new Date();

    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();

    var minDate= year + '-' + month + '-' + day;

    $('#session-date').attr('min', minDate);
});
$(function(){
    var dtToday = new Date();

    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();

    var minDate= year + '-' + month + '-' + day;

    $('#session-date2').attr('min', minDate);
});
$(function(){
    var dtToday = new Date();

    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();

    var minDate= year + '-' + month + '-' + day;

    $('#return-date').attr('min', minDate);
});
</script>
<style type="text/css">
body {
	overflow: auto;
}

.hero-section {
	background:
		url('https://th.bing.com/th/id/R.c9f03fe571976c41667c431546f2208a?rik=NLwFmzQwYGwP%2fw&riu=http%3a%2f%2fmedia.cntraveller.in%2fwp-content%2fuploads%2f2016%2f02%2ft2lead.jpg&ehk=MIyyuOBF3DnuJPQKenDEk9643DD0oCc0CaCpaZngs7Q%3d&risl=&pid=ImgRaw&r=0')
		no-repeat center;
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
	margin-left: 58px;
	font-size: 20px;
	font-weight: bold;
	margin-top: 10px;
	font-size: 20px;
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
	position: absolute;
	left: 42%;
	top: 76%;
}

.search-button:hover {
	background-color: #0069d9;
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

.myDiv {
	display: none;
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
	left: 40%;
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
	<%
	User us = (User) session.getAttribute("userobj");
	%>
	<section class="hero-section">
		<h1 style="color: white;">Book Flights Ticket</h1>
		<div class="container align-items-center justify-content-center">
			<div class="data">
				<div class="tickets">
					<div class="ticket-type">
						<input type="radio" class="btn btn-light rounded-pill ms-4"
							name="radio" id="one-way" checked> <label for="one-way"
							id="one-way">One-Way</label> <input type="radio" name="radio"
							class="btn btn-light rounded-pill ms-4" id="round-trip"><label
							for="round-trip" id="round-trip">Round-Trip</label>
					</div>
					<div id="showOne" class="myDiv">
						<form method="post" action="Flights.jsp">
							<input type="hidden" name="count" id="count">
							<div class="row mt-2">
								<div class="col-md-6" style="padding-left: 35px;">
									<label for="exampleDataList" class="form-label">From</label> <select
										name="from" class="form-control" id="exampleDataList">
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
									</select>
								</div>
								<div class="col-md-6">
									<label for="exampleDataList1" class="form-label">To</label> <select
										name="to" class="form-control" id="exampleDataList1">
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
									</select>
								</div>
							</div>
							<div class="row mt-2">
								<div class="col-md-4" style="padding-left: 35px;">
									<label for="session-date" class="form-label">Date</label> <input
										type="date" class="form-control depart" name="date"
										id="session-date">
								</div>
								<div class="col-md-4">
									<label for="session-date" class="form-label">Class</label> <select
										class="form-select" name="classes"
										aria-label="Default select example">
										<option selected value="Economy">Economy</option>
										<option value="Business">Business</option>
										<option value="FirstClass">First Class</option>
									</select>
								</div>
								<div class="col-md-4">
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
												</button> <input type="text" name="adult" id="rooms2" value="1">
												<button id="but" onclick="incrementCount('rooms2','Adult')">
													<i class="fa-solid fa-plus"></i>
												</button></li>
											<li class="option"><label for="rooms">Childrens</label>
												<button id="but" onclick="decrementCount('rooms3','child')">
													<i class="fa-solid fa-minus"></i>
												</button> <input type="text" id="rooms3" name="child" value="0">
												<button id="but" onclick="incrementCount('rooms3','Child')">
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
					<div id="showTwo" class="myDiv">
						<form method="post" action="Flights.jsp">
							<div class="row mt-2">
								<div class="col-md-6" style="padding-left: 35px;">
									<label for="exampleDataList" class="form-label">From</label> <select
										name="from" class="form-control" id="exampleDataList">
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
									</select>
								</div>
								<div class="col-md-6">
									<label for="exampleDataList1" class="form-label">To</label> <select
										name="to" class="form-control" id="exampleDataList1">
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
									</select>
								</div>
							</div>
							<div class="row mt-2">
								<div class="col-md-3" style="padding-left: 35px;">
									<label for="session-date2" class="form-label">Date</label> <input
										type="date" class="form-control depart" name="date"
										id="session-date2">

								</div>
								<div class="col-md-3">
									<label for="return-date" class="form-label">Return Date</label>
									<input type="date" class="form-control return" name="date"
										id="return-date">
								</div>
								<div class="col-md-3">
									<label for="session-date" class="form-label">Class</label> <select
										class="form-select" name="classes"
										aria-label="Default select example">
										<option selected value="Economy">Economy</option>
										<option value="Business">Business</option>
										<option value="FirstClass">First Class</option>
									</select>
								</div>
								<div class="col-md-3">
									<label for="session-date" class="form-label">Passengers</label>
									<input type="number" name="no" class="form-control"
										name="number" placeholder="Number">
								</div>
							</div>
							<input type="submit" class="search-button mt-3" value="Search">
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="container" id="offers">
			<h3 class="font-weight-bold">Offers</h3>
			<div class="row mt-3">
				<div class="col-md-4 pt-3" id="offer">
					<img
						src="https://promos.makemytrip.com/notification/xhdpi//116X116-express-1707024.jpg?im=Resize=(134,134)"
						id="offimage"> <span id="text">Book Business Class
						Seats<label style="margin-left: 15px;">within Rs.15,000</label>
					</span>
					<hr style="margin-left: 43%; color: red; margin-right: 35%;">
					<label
						style="margin-left: 15px; font-size: 14px; font-weight: 500;">with
						Air India Express.</label> <a href="#"
						style="float: right; margin-top: 13%; text-decoration: none; font-weight: bold;">Book
						Now</a>
				</div>
				<div class="col-md-4 pt-3" style="margin-left: 15px;" id="offer">
					<img
						src="https://promos.makemytrip.com/notification/xhdpi//116X116-hdfc-01042024.jpg?im=Resize=(134,134)"
						id="offimage"> <span id="text">Grap Up to Rs.7500
						OFF* </span>
					<hr style="margin-left: 43%; color: red; margin-right: 35%;">
					<label
						style="margin-left: 15px; font-size: 14px; font-weight: 500;">on
						domestic flights.</label> <a href="#"
						style="float: right; margin-top: 20%; text-decoration: none; font-weight: bold;">Book
						Now</a>
				</div>
				<div class="col-md-4 pt-3" style="margin-left: 15px;" id="offer">
					<img
						src="https://promos.makemytrip.com/notification/xhdpi//Desktop-DF-Zero-Cancellation-310323.jpg?im=Resize=(134,134)"
						id="offimage"> <span id="text">Avail Zero
						Cancellation <label style="margin-left: 15px;">on Domestic
							Flights!</label>
					</span>
					<hr style="margin-left: 43%; color: red; margin-right: 35%;">
					<p style="font-size: 14px; font-weight: 500;">&emsp;Get 100%
						refund in case you &emsp;cancel your flight.</p>
					<a href="#"
						style="float: right; margin-top: 4%; text-decoration: none; font-weight: bold;">Book
						Now</a>
				</div>
			</div>
		</div>
		<div class="heading">
			<h2>Top Destinations in India</h2>
		</div>
		<div class="gallery-wrap">
			<a id="backBtn"><i class="fas fa-backward"></i></a>
			<div class="gallery mt-5">
				<div>
					<span><img src="image/mumbai.jpeg" alt=""><span
						class="text">Marine Drive,Mumbai</span></span><span><img
						src="image/delhi.jpg" alt=""><span class="text">India
							Gate,Delhi</span></span> <span><img src="image/goa.jpg" alt=""><span
						class="text">Miramar Beach,Goa</span></span>
				</div>
				<div>
					<span><img src="image/Gujarat.jpg" alt=""><span
						class="text">White Desert,Gujarat</span></span> <span><img
						src="image/kashmir.jpeg" alt=""><span class="text">Dal
							Lake,Kashmir</span></span> <span><img src="image/kolkata.jpg" alt=""><span
						class="text">Howra Bridge,Kolkata</span></span>
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

	
	const optionMenu=document.querySelector('.select-menu'),
	selectBtn=optionMenu.querySelector('.select-btn'),
	options=optionMenu.querySelectorAll('.option'),
	sBtn_text=optionMenu.querySelector('.sBtn-text');
	
	selectBtn.addEventListener("click",() => optionMenu.classList.toggle("active"));
	
	let inp = Number(document.getElementById('rooms2').value);
	let inp2 = Number(document.getElementById('rooms3').value);
	let in3=inp+inp2;
	document.getElementById('count').value=in3;
	sBtn_text.innerText=inp+" Adult, "+inp2+" Child";
	
	function incrementCount(id,name) {
		event.preventDefault();
		const input = document.getElementById(id);
		const value = parseInt(input.value);
		input.value = value + 1;
		let inp = Number(document.getElementById('rooms2').value);
		let inp2 = Number(document.getElementById('rooms3').value);
		let in3=inp+inp2;
		document.getElementById('count').value=in3;
		sBtn_text.innerText=inp+" Adult, "+inp2+" Child";
	}

	function decrementCount(id,name) {
		event.preventDefault();
		const input = document.getElementById(id);
		const value = parseInt(input.value);
		if (value > 0) {
			input.value = value - 1;
			let inp = Number(document.getElementById('rooms2').value);
			let inp2 = Number(document.getElementById('rooms3').value);
			let in3=inp+inp2;
			document.getElementById('count').value=in3;
			sBtn_text.innerText=inp+" Adult, "+inp2+" Child";
		}
	}
	
	if(document.getElementById('one-way').checked==true){
		 $("#showOne").show();
	}else{
		 $("#showOne").hide();
	}
	var now = new Date();
	var day = ("0" + now.getDate()).slice(-2);
	var month = ("0" + (now.getMonth() + 1)).slice(-2);
	var after = ("0" + (now.getDate() + 2)).slice(-2);
	var today = now.getFullYear()+"-"+(month)+"-"+(day) ;
	$('.depart').val(today);
	
	var tomorrow = now.getFullYear()+"-"+(month)+"-"+(after) ;
	$('.return').val(tomorrow);

</script>
	</ body>
</html>