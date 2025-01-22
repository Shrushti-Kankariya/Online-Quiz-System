<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Quiz System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
        body {
            background-color: #f8f9fa;
        }
        .login-form {
            max-width: 500px;
            height: 500px;
            margin: 50px auto;
            //background: #ffffff;
            background: linear-gradient(to right, lightblue,#ffffff);
            border: 1px solid #dee2e6;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .form-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .btn-custom {
            background-color: #007bff;
            color: #ffffff;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

	<div class="container">
		<div class="login-form">
			<h2 class="form-header">Login Form</h2>
			<form action="LoginServlet" method="post">
				<div class="mb-3 mt-5">
		             <label for="username" class="form-label">Username</label>
		             <input type="text" class="form-control" name="username" placeholder="Enter your username" required>
		        </div>
		        <div class="mb-3 mt-4">
		             <label for="password" class="form-label">Password</label>
		             <input type="password" class="form-control" name="password" placeholder="Enter your password" required>
		        </div>
		       	<input type="submit" class="btn btn-custom w-100 mt-4" value="Login">
			</form>
			<div class="text-center mt-4">
                <p>New user? <a href="registration.jsp">Register here</a></p>
            </div>
		</div>
	</div>
	<% 
                String errorMessage = (String) request.getAttribute("errorMessage");
                if (errorMessage != null) { 
            %>
                <div class="alert alert-danger">
                    <strong>Error:</strong> <%= errorMessage %>
                </div>
            <% 
            }
    %>
</body>
</html>