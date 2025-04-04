<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style type="text/css">
:root {
	--main-color: #007bff;
	--color-dark: #1D2231;
	--text-grey: #8390A2;
}

* {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	text-decoration: none;
	list-style-type: none;
	box-sizing: border-box;
}

#sidebar-toggle {
	display: none;
}

.sidebar {
	height: 100%;
	width: 240px;
	position: fixed;
	left: 0;
	top: 0;
	z-index: 100;
	background: Var(--main-color);
	color: #efefef;
	overflow-y: auto;
	transition: width 500ms;
}

.sidebar-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	height: 60px;
	padding: 0rem 1rem;
}

.sidebar-menu {
	padding: 1rem;
}

.sidebar li {
	margin-bottom: 1.2rem;
}

.sidebar a {
	color: #fff;
	font-size: 1rem;
}

.sidebar a span:last-child {
	padding-right: .6rem;
}

#sidebar-toggle:checked ~ .sidebar {
	width: 60px;
}

#sidebar-toggle:checked ~ .sidebar .sidebar-header h3 span,
	#sidebar-toggle:checked ~ .sidebar  li span:last-child {
	display: none;
}

#sidebar-toggle:checked ~ .sidebar .sidebar-header, #sidebar-toggle:checked 
	 ~ .sidebar li {
	display: flex;
	justify-content: center;
}

#sidebar-toggle:checked ~ .main-content {
	margin-left: 60px;
}

#sidebar-toggle:checked ~ .main-content header {
	left: 60px;
	width: calc(100% - 60px);
}

.main-content {
	position: relative;
	margin-left: 240px;
	transition: margin-left 500ms;
}

header {
	position: fixed;
	left: 240px;
	top: 0;
	z-index: 100;
	width: calc(100% - 240px);
	height: 60px;
	background: #fff;
	padding: 0rem 1rem;
	display: flex;
	align-items: center;
	justify-content: space-between;
	border-bottom: 1px solid #ccc;
	transition: left 500ms;
}

.search-wrapper {
	display: flex;
	align-items: center;
}

.social-icons {
	display: flex;
	align-items: center;
}

.social-icons span, .social-icons div {
	margin-left: 1.2rem;
}

.social-icons img {
	height: 38px;
	width: 38px;
	background-size: cover;
	background-repeat: no-repeat;
	border-radius: 50%;
}

.search-wrapper input {
	border: 0;
	outline: 0;
	padding: 1rem;
	height: 38px;
}

@media only screen and (max-width:1200px) {
	.sidebar {
		width: 60px;
		z-index: 150;
	}
	.sidebar .sidebar-header h3 span, .sidebar  li span:last-child {
		display: none;
	}
	.sidebar .sidebar-header, .sidebar li {
		display: flex;
		justify-content: center;
	}
	.main-content {
		margin-left: 60px;
	}
	.main-content header {
		left: 60px;
		width: calc(100% - 60px);
	}
	#sidebar-toggle:checked ~ .sidebar {
		width: 240px;
	}
	#sidebar-toggle:checked ~ .sidebar .sidebar-header h3 span,
		#sidebar-toggle:checked ~ .sidebar  li span:last-child {
		display: inline;
	}
	#sidebar-toggle:checked ~ .sidebar .sidebar-header {
		display: flex;
		justify-content: space-between;
	}
	#sidebar-toggle:checked  ~ .sidebar li {
		display: block;
	}
	#sidebar-toggle:checked ~ .main-content {
		margin-left: 60px;
	}
	#sidebar-toggle:checked ~ .main-content header {
		left: 60px;
	}
}
</style>
</head>
<body>
	<input type="checkbox" id="sidebar-toggle">
	<div class="sidebar">
		<c:if test="${not empty userobj}">
			<div class="sidebar-header">
				<h3 class="brand">
					<span class="ti-unlink"></span> <span>Welcome,${userobj.fullName}</span>
				</h3>
				<label for="sidebar-toggle" class="ti-menu-alt"></label>
			</div>
		</c:if>
		<div class="sidebar-menu">
			<ul>
				<li><a href="home.jsp"> <span><i
							class="fa-solid fa-chalkboard"></i></span> <span>Dashboard</span>
				</a></li>
				<li><a href="airlinemanagement.jsp"> <span><i
							class="fa-solid fa-clipboard"></i></span> <span>Airline
							Management</span>
				</a></li>
				<li><a href="flightmanagement.jsp"> <span><i
							class="fa-solid fa-cube"></i></span> <span>Flight Management</span>
				</a></li>
				<li><a href="scheduledflight.jsp"> <span><i
							class="fa-solid fa-calendar-days"></i></span> <span>Schedule
							Flight</span>
				</a></li>
				<li><a href="passenger.jsp"> <span><i
							class="fa-solid fa-user-clock"></i></span> <span>Passenger List</span>
				</a></li>
				<li><a href="logout"> <span><i
							class="fa-solid fa-right-from-bracket"></i></span> <span>Logout</span>
				</a></li>
			</ul>
		</div>
	</div>
	<div class="main-content">
		<header>
			<div class="search-wrapper">
				<span class="ti-search"></span> <input type="search"
					placeholder="Search">
			</div>
			<div class="social-icons">
				<span class="ti-bell"></span> <span class="ti-comment"
					style="margin-right: 1.2rem;"></span><img src="image/admin.jpg"
					alt="logo">
			</div>
		</header>
	</div>
</body>
</html>