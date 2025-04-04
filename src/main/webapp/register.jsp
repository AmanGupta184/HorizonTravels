<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Page</title>
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="main.js"></script>
<style type="text/css">
.container {
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.hero-section {
	width: 100%;
	height: 100%;
}

.hero-section:before {
	background-color: rgba(0, 0, 0, 0.1);
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.hero-section .container {
	position: relative;
}

.card {
	border: 0;
	border-radius: 20px;
	box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
	border: 0;
}

.img-left {
	width: 50%;
	background: url('image/travel-pic.png') center;
	background-size: cover;
}

.card-body {
	padding: 2rem;
	height: 540px;
	overflow-y: scroll;
}

.title {
	margin-bottom: 2rem;
}

.form-input {
	position: relative;
}

.form-input input {
	width: 100%;
	height: 45px;
	padding-left: 40px;
	margin-bottom: 20px;
	box-sizing: border-box;
	box-shadow: none;
	border: 1px solid #00000020;
	border-radius: 50px;
	outline: none;
	background: transparent;
}

.form-input span {
	position: absolute;
	top: 10px;
	padding-left: 15px;
	color: #007bff;
}

.form-input input::placeholder {
	color: black;
	padding-left: 0px;
}

.form-input input:focus {
	border: 2px solid #007bff;
}

.custom-checkbox .custom-control-input:checked ~ .custom-control-label:before
	{
	background-color: #007bff;
	border: 0px;
}

.custom-control-label:hover {
	color: #007bff;
	cursor: pointer;
}

.form-box input[type="submit"] {
	margin-top: 10px;
	border: none;
	cursor: pointer;
	border-radius: 50px;
	background: #007bff;
	color: #fff;
	font-size: 90%;
	font-weight: bold;
	letter-spacing: .1rem;
	transition: 0.5s;
	padding: 12px;
}

.form-box input[type="submit"]:hover {
	background: #0069d9;
}

.register-link {
	color: #007bff;
	font-weight: bold;
}

.register-link:hover {
	color: #0069d9;
	text-decoration: none;
}
</style>
</head>
<body>
	<%@include file="nav.jsp"%>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<section class="hero-section">
		<div class="container" style="margin-top: 10%;">
			<div class="row px-3">
				<div class="col-lg-10 col-xl-9 card flex-row mx-auto px-0">
					<div class="img-left d-none d-md-flex"></div>
					<div class="card-body">
						<h4 class="title text-center mt-4">Create your Account</h4>
						<form class="form-box px-3" method="post" action="Register2"
							onsubmit="return validate()">
							<div class="form-input">
								<span><i class="fa-regular fa-user"></i></span> <input
									type="text" name="firstName" id="name" placeholder="Full Name"
									tabindex="10">
							</div>
							<div class="form-input">
								<span><i class="fa fa-envelope"></i></span> <input type="text"
									name="email" placeholder="Email Address" id="email"
									tabindex="10">
							</div>
							<div class="form-input">
								<span><i class="fa fa-envelope"></i></span> <input type="text"
									name="phoneNo" placeholder="Contact No" id="phone"
									tabindex="10">
							</div>
							<div class="form-input">
								<span><i class="fa fa-key"></i></span> <input type="password"
									name="password" id="pwd" placeholder="Password">
							</div>
							<div class="form-input">
								<span><i class="fa fa-key"></i></span> <input type="password"
									name="confirmPwd" id="repwd" placeholder="Confirm Password">
							</div>
							<div class="mb-3">
								<div class="cutom-control custom-checkbox"
									style="text-align: center;">
									<label class="custom-control-label" style="text-align: center;"
										for="cb1"> <span><input type="checkbox"
											class="custom-control-input" id="cb1" name="check">Agree
											Terms and Condition </span>
									</label>
								</div>
							</div>
							<div class="mb-3 d-grid gap-2">
								<input type="submit" class="btn text-uppercase" value="sign up">
							</div>
							<hr class="my-4">
							<div class="text-center mb-2">
								Already have an account?<a href="login.jsp"
									class="register-link">Login here</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div style="margin-top: 54px; background-color: #2A2A2A;">
		<%@include file="footer.jsp"%>
	</div>
	<script type="text/javascript">
		function validate() {
			let name = document.getElementById("name").value;
			let email = document.getElementById("email").value;
			let phone = document.getElementById("phone").value;
			let pwd = document.getElementById("pwd").value;
			let repwd = document.getElementById("repwd").value;

			let rename = /(^[a-zA-Z][a-zA-Z\s]{0,20}[a-zA-Z]$)/;
			let reemail = /^[\w.-]+@[\w.-]+\.\w{2,3}$/;
			let rephone = /^[987][0-9]{9}$/;
			let repassword =/(?=.*[0-9])/;

			const checkbox = document.querySelector('input[type="checkbox"]');
			if (!checkbox.checked) {
				alert("please agree to terms and condition", 3000);
				return false;
			}
			if (name === "" || email === "" || phone === "" || pwd === ""
					|| repwd === "") {
				alert("Fields cannot be empty..", 3000);
				return false;
			} else {
				if (!rename.test(name)) {
					alert("Numbers are not allowed..", 3000);
					return false;
				}
				if (!reemail.test(email)) {
					alert("Pattern does not match..", 3000);
					return false;
				}
				if (!rephone.test(phone)) {
					alert("Phone no must be 10 digit..", 3000);
					return false;
				}
				if (!repassword.test(pwd)) {
					alert(
							"Atleast one captial letter,digit and minimum of 8 length..",
							3000);
					return false;
				}
				if (pwd !== repwd) {
					alert("Password and confirm password must be same..", 3000);
					return false;
				}
			}
		}
		var status = document.getElementById("status").value;
		if (status == "Registered Successfully...") {
			swal("Congrats", status, "success");
		} else if (status == "Some error occured..") {
			swal("Failed", status, "error");
		} else if (status == "Email already exists..") {
			swal("Failed", status, "error");
		}
	</script>
</body>
</html>