<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ContactUs Page</title>
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
textarea {
	width: 100%;
	border: 1px solid #ccc;
	outline: none;
	padding: 10px;
	box-sizing: border-box;
}

tr td:first-child {
	padding-right: 20px;
}

tr td {
	padding-top: 40px;
}

h4 {
	text-align: center;
}

#title {
	margin-top: 8%;
}
</style>
</head>
<body style="background-color: #E8E8E8;">
	<%@include file="nav.jsp"%>
	<div class="text-center" id="title">
		<h3>Connect with Us</h3>
	</div>
	<div class="container p-5 d-flex" style="margin-left: 140px;">
		<div class="row">
			<div class="col-md-6 p-3 border bg-white">
				<div>
					<h4>Get in Touch</h4>
				</div>
				<br>
				<form method="post" action="https://api.web3forms.com/submit">
					<input type="hidden" name="access_key"
						value="e2d4a4d5-edd6-4f27-b053-209fe53097a8"> <input
						type="hidden" name="from_name" value="Aman Travels">
					<div class="row">
						<div class="col">
							<label for="fname">Name</label> <input type="text" name="name"
								class="form-control" id="fname" required>
						</div>
						<div class="col">
							<label for="phoneNo">Phone</label> <input type="text"
								name="phone" class="form-control" id="phoneNo" required>
						</div>
					</div>
					<div class="row mt-3">
						<div class="col">
							<label for="email">Email</label> <input type="email" name="email"
								class="form-control" id="email" required>
						</div>
						<div class="col">
							<label for="subject">Subject</label> <input type="text"
								name="subject" class="form-control" id="subject" required>
						</div>
					</div>
					<div class="row mt-3">
						<div class="col">
							<label for="message">Message</label>
							<textarea name="message" rows="3" cols="30" class="form-control"
								id="message" required></textarea>
						</div>
					</div>
					<br>
					<div class="text-center">
						<button type="submit" class="btn btn-primary rounded-pill">Send
							Form</button>
					</div>
				</form>
			</div>
			<div class="col-md-5 p-3 border bg-primary text-white">
				<div>
					<h4>Reach Us</h4>
				</div>
				<table>
					<tr>
						<td>Email</td>
						<td>amangupta184@outlook.com</td>
					</tr>
					<tr>
						<td>Phone</td>
						<td>+91 8369929536</td>
					</tr>
					<tr>
						<td>Address</td>
						<td>SVP Nagar,Central Railway Colony,Wenden Avenue
							Road,Matunga Road,Mumbai-400019</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div style="background-color: #2A2A2A;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>