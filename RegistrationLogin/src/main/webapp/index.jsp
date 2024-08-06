<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<!-- Bootstrap 4 CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
body {
	background-color: #f7f7f7;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.container {
	margin-top: 100px;
}

.btn-custom {
	background-color: #007bff;
	color: white;
	border-radius: 5px;
	padding: 10px 20px;
	font-size: 18px;
	text-transform: uppercase;
	font-weight: bold;
	text-align: center;
	width: 100%;
}

.btn-custom:hover {
	background-color: #0056b3;
	color: white;
}

h3 {
	text-align: center;
	margin-bottom: 40px;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h3>Welcome to My Website</h3>
				<div class="d-flex flex-column">
					<a href="login.jsp" class="btn btn-custom mb-3">For Login,
						Click Here</a> <a href="register.jsp" class="btn btn-custom">For
						Registration, Click Here</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap 4 JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
