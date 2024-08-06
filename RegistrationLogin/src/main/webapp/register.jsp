<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<!-- Bootstrap 4 CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
body {
	background-color: #f7f7f7;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.card {
	background-color: #e3f2fd; /* Light blue background */
	border: none;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.card-header {
	background-color: #007bff;
	color: white;
	border-radius: 10px 10px 0 0;
}

.btn-primary {
	background-color: #28a745;
	border-color: #28a745;
}

.btn-primary:hover {
	background-color: #218838;
	border-color: #1e7e34;
}

label {
	color: #333;
	font-weight: 500;
}

.form-check-label {
	color: #555;
}

.form-control {
	border-radius: 5px;
}
</style>
</head>
<body>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header text-center">
						<h4>Registration Form</h4>
					</div>
					<div class="card-body">
						<form action="registerForm" method="post">
							<div class="form-group">
								<label for="name">Name</label> <input type="text"
									class="form-control" id="name" name="name"
									placeholder="Enter your name" required>
							</div>

							<div class="form-group">
								<label for="email">Email</label> <input type="email"
									class="form-control" id="email" name="email"
									placeholder="Enter your email" required>
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" name="password"
									placeholder="Enter your password" required>
							</div>

							<div class="form-group">
								<label>Gender</label>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="gender"
										id="male" value="male" required> <label
										class="form-check-label" for="male"> Male </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="gender"
										id="female" value="female" required> <label
										class="form-check-label" for="female"> Female </label>
								</div>
							</div>

							<div class="form-group">
								<label for="city">City</label> <select class="form-control"
									id="city" name="city" required>
									<option value="">Select City</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Pune">Pune</option>
									<option value="Delhi">Delhi</option>
								</select>
							</div>

							<button type="submit" class="btn btn-primary btn-block">Register</button>
						</form>
					</div>
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
