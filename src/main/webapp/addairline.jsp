<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
main {
	margin-top: 60px;
	background: #f1f5f9;
	min-height: 91.8vh;
	padding: 1rem 3rem;
}

.recent {
	margin-top: 2rem;
	margin-bottom: 3rem;
}

.activity-grid {
	display: grid;
	grid-template-columns: 100%;
	grid-column-gap: 1.5rem;
}

.activity-card {
	background: #fff;
	border-radius: 7px;
}

.activity-card .title {
	display: flex;
	align-items: center;
}

.activity-card .title a {
	background: yellow;
	color: black;
	font-weight: 700;
	margin-left: 770px;
	padding: .5rem;
}

.activity-card h3 {
	color: var(--text-black);
	margin: 2rem;
}

.container {
	max-width: 800px;
	width: 100%;
	padding: 10px 30px;
}

.input-box {
	display: flex;
	justify-content: space-between;
}

.input-box input {
	width: 70%;
	height: 30px;
	outline: none;
	border-radius: 5px;
	border: 1px solid #ccc;
	padding-left: 15px;
	font-size: 16px;
	border-bottom-width: 2px;
	transition: all 0.3s ease;
}

form .button {
	height: 45px;
	margin: 35px 0 0 0;
	display: flex;
	align-items: center;
	justify-content: space-around;
}

form .button #submit, form .button #reset {
	height: 100%;
	width: 20%;
	outline: none;
	border: none;
	border-radius: 6px;
	font-size: 16px;
	cursor: pointer;
}

form .button #submit {
	background: #007bff;
	color: white;
}

form .button #submit:hover {
	background: #0069d9;
}

form .button #reset {
	background: red;
	color: white;
}

form .button #reset:hover {
	background: #dc1104;
}
</style>
</head>
<body>
	<%@include file="adminnav.jsp"%>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<div class="main-content">
		<main>
			<section class="recent">
				<div class="activity-grid">
					<div class="activity-card">
						<div class="title">
							<h3>ADD NEW AIRLINE</h3>
							<a href="airlinemanagement.jsp"><i
								class="fa-solid fa-paper-plane" style="margin-right: .5rem;"></i>View
								Airline</a>
						</div>
						<div class="container">
							<form method="post" action="add_airline">
								<div class="user-details">
									<div class="input-box">
										<span class="details">Enter Airline Name</span>: <input
											type="text" name="fname" placeholder="Name.." required>
									</div>
								</div>
								<div class="button">
									<input type="submit" value="Submit" id="submit"> <input
										type="reset" value="Reset" id="reset">
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
		</main>
	</div>
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "failed") {
			swal("Failed", "Some error occurred..", "error");
		} else if (status == "success") {
			swal("Success", "Added Successfully..", "success");
		} else if (status == "failed2") {
			swal("Failed", "Airline Name Already Exists..", "error");
		}
	</script>
</body>
</html>