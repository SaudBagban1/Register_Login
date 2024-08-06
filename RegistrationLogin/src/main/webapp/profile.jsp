<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>
<!-- Bootstrap 4 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
    body {
        background-color: #f7f7f7;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .container {
        margin-top: 100px;
    }
    .card {
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        background-color: #ffffff;
    }
    .card-header {
        background-color: #007bff;
        color: white;
        border-radius: 10px 10px 0 0;
    }
    .card-body {
        text-align: center;
    }
    .btn-primary {
        background-color: #007bff;
        border-color: #007bff;
        border-radius: 5px;
    }
    .btn-primary:hover {
        background-color: #0056b3;
        border-color: #004085;
    }
    h3 {
        color: #333;
        margin-bottom: 20px;
    }
</style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header text-center">
                    <h4>Profile Page</h4>
                </div>
                <div class="card-body">
                    <h3>Welcome, ${session_name}</h3>
                    <p>You have been successfully logged in.</p>
                    <a href="index.jsp" class="btn btn-primary">Go to Home</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap 4 JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
