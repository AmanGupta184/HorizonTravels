<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us Page</title>
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
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

body {
	overflow: auto;
}

.section {
	width: 100%;
	min-height: 100vh;
}

.container {
	width: 85%;
	display: block;
	margin: auto;
	padding-top: 150px;
}

.container-gp {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	grid-gap: 40px;
}

.content-section .title {
	font-size: 28px;
	text-transform: uppercase;
	font-family: sans-serif;
}

.content-section .content h2 {
	margin-top: 20px;
	color: #5d5d5d;
	font-size: 24px;
	font-family: sans-serif;
}

.content-section .content p {
	margin-top: 10px;
	font-family: sans-serif;
	font-size: 18px;
	line-height: 1.5;
}

.content-section .content .button {
	margin-top: 30px;
}

.content-section .content .button a {
	font-family: sans-serif;
	background-color: #9e2a40;
	padding: 12px 20px;
	text-decoration: none;
	color: #fff;
	font-size: 21px;
	letter-spacing: 1.5px;
}

.content-section .content .button a:hover {
	background-color: #702d3a;
	transition: 0.5s;
}

.content-section .social {
	margin: 40px 0px;
}

.content-section .social i {
	color: #5d5d5d;
	font-size: 18px;
	padding: 0px 6px;
}

.content-section .social i:hover {
	color: #3d3d3d;
	transition: 0.5s;
}

.image-section {
	width: 60%;
	margin-left: 180px;
}

.image-section img {
	width: 100%;
	height: auto;
	box-shadow: 0px 0px 8px 2px rgba(0, 0, 0, 0.4);
}

.image-section2 {
	width: 60%;
}

.image-section2 img {
	width: 100%;
	height: auto;
	box-shadow: 0px 0px 8px 2px rgba(0, 0, 0, 0.4);
}
</style>
</head>
<body>
	<%@include file="nav.jsp"%>
	<div class="section">
		<div class="container">
			<div class="container-gp">
				<div class="content-section">
					<div class="title">
						<h1>About Us</h1>
					</div>
					<div class="content">
						<h2>Our leadership team</h2>
						<p>At the helm of our business, is a stable executive team
							that has led the growth and success of the Aman's Travel Group.
							Our executive leaders continue to drive innovation and build on
							our foundations for long-term success.</p>
						<div class="button">
							<a href="">Read More</a>
						</div>
					</div>
				</div>
				<div class="image-section">
					<img
						src="https://jamaicagetawaytravels.com/wp-content/uploads/2024/02/airline-crew-transportation2-1-500x500.jpg">
				</div>
				<div class="image-section2">
					<img
						src="https://th.bing.com/th/id/R.1d54b3cc342226c237f26cbe90accf8a?rik=STBK92Z50KHvKA&riu=http%3a%2f%2ftourismcareers.qtic.com.au%2fwp-content%2fuploads%2f2019%2f04%2fiStock-498240641-1.jpg&ehk=x4wiTK1noK2nNzVjAJia0Hde6RCHONEU6Gt09SYq%2bwY%3d&risl=1&pid=ImgRaw&r=0">
				</div>
				<div class="content-section" style="margin-left: -100px;">
					<div class="content">
						<h2>See The World For Less</h2>
						<p>Aman Travels, a digital travel platform, helps anyone see the
							world for less with its great value deals on a global network of
							4.7M hotels and holiday properties worldwide, plus flights,
							activities, and more. Agoda.com and the Agoda mobile app are
							available in 39 languages and supported by 24/7 customer support.
							Headquartered in Singapore, Agoda is part of Booking Holdings
							(Nasdaq: BKNG) and employs more than 7,100 staff in 27 markets,
							dedicated to leveraging best-in-class technology to make travel
							even easier.</p>
						<div class="button">
							<a href="">Read More</a>
						</div>
					</div>
					<div class="social">
						<a href=""><i class="fab fa-facebook-f"></i></a> <a href=""><i
							class="fab fa-twitter"></i></a> <a href=""><i
							class="fab fa-instagram"></i></a> <a href=""><i
							class="fab fa-youtube"></i></a>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div style="background-color: #2A2A2A;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>