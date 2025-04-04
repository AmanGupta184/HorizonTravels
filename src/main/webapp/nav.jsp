<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<style type="text/css">
.navbar {
	background-color: #fff;
	height: 70px;
	margin: 20px;
	border-radius: 16px;
	padding: 0.5rem;
}

img {
	height: 150px;
	width: 140px;
	margin-left: -20px;
}

#logo-name {
	font-weight: bold;
	color: #0069d9;
	margin-left: -25px;
}

.login-button {
	background-color: #007bff;
	color: #fff;
	font-size: 14px;
	padding: 8px 20px;
	border-radius: 50px;
	text-decoration: none;
	transition: 0.3s background-color;
}

.login-button:hover {
	background-color: #0069d9;
}

.login-button2 {
	background-color: #007bff;
	color: #fff;
	font-size: 14px;
	padding: 8px 20px;
	border-radius: 50px;
	text-decoration: none;
	transition: 0.3s background-color;
}

.login-button2:hover {
	background-color: #0069d9;
}

.navbar-brand {
	font-weight: 500;
	color: #009970;
	font-size: 24px;
	transition: 0.3s color;
}

.navbar-toggler {
	border: none;
	font-size: 1.25rem;
}

.navbar-toggler:focus, .btn-close:focus {
	box-shadow: none;
	outline: none;
}

.nav-link {
	color: #668777;
	margin-left: -50px;
	font-weight: 500;
	position: relative;
}

.nav-link:hover {
	color: #000;
}

@media ( min-width :991px) {
	.nav-link::before {
		content: "";
		position: absolute;
		bottom: 0;
		left: 50%;
		transform: translateX(-50%);
		width: 0;
		height: 2px;
		background-color: rgb(73, 161, 244);
		visibility: hidden;
		transition: 0.3s ease-in-out;
	}
	.nav-link:hover::before, .nav-link.active::before {
		width: 100%;
		visibility: visible;
	}
}
/* Toast start from here */
#toast2 {
	min-width: 400px;
	height: 140px;
	position: absolute;
	top: 50%;
	bottom: 50%;
	left: 37%;
	margin-top: 0px;
	background: #555555;
	color: white;
	text-align: center;
	font-size: 18px;
}

#pop-up {
	height: 0px;
	width: 0px;
	background-color: #555555;
	border: 0px;
	color: white;
	display: flex;
	align-content: flex-start;
	margin-top: 7px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg fixed-top">
		<div class="container-fluid">
			<a href="index.jsp" style="cursor: pointer; text-decoration: none;"><img
				class="navbar-brand me-auto" src="image/logo-rem.png"></img><span
				id="logo-name">HORIZON TRAVELS</span></a>
			<div class="offcanvas offcanvas-end" tabindex="-1"
				id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasNavbarLabel">Logo</h5>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-center flex-grow-1 pe-3">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="index.jsp">Flights</a></li>
						<!-- <li class="nav-item"><a class="nav-link mx-lg-2"
							href="Hotel.jsp">Hotels</a></li>
						<li class="nav-item"><a class="nav-link mx-lg-2"
							href="Train.jsp">Trains</a></li>
						<li class="nav-item"><a class="nav-link mx-lg-2"
							href="Bus.jsp">Buses</a></li>
						<li class="nav-item"><a class="nav-link mx-lg-2"
							href="Ferry.jsp">Ferries</a></li>
						<li class="nav-item"><a class="nav-link mx-lg-2"
							href="Cabs.jsp">Cabs</a></li> -->
						<li class="nav-item"><a class="nav-link mx-lg-2" href="AboutUs.jsp">About
								Us</a></li>
						<li class="nav-item"><a class="nav-link mx-lg-2"
							href="ContactUs.jsp">Contact Us</a></li>
					</ul>
				</div>
			</div>
			<c:if test="${not empty userobj}">
				<a href="#" class="login-button">${userobj.fullName}</a>
				<a href="logout" class="login-button2" style="margin-left: 10px;">Logout</a>
			</c:if>
			<c:if test="${empty userobj}">
				<a href="login.jsp" class="login-button">Login</a>
			</c:if>
			<button class="navbar-toggler pe-0" type="button"
				data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
				aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>
	<script>
	document.querySelectorAll(".nav-link").forEach((link) => {
	    if (link.href === window.location.href) {
	        link.classList.add("active");
	        link.setAttribute("aria-current", "page");
	    }
	});
	</script>
</body>
</html>