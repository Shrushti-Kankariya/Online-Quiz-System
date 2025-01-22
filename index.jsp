<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Quiz System</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color:  #d4edda;
            font-family: Arial, sans-serif;
        }
        .hero-section {
            text-align: center;
            padding: 50px 20px;
            background: linear-gradient(to right, lightblue, #6610f2);
            color: white;
        }
        .hero-section h1 {
            font-size: 3rem;
            margin-bottom: 20px;
        }
        .hero-section p {
            font-size: 1.2rem;
        }
        .action-buttons {
            margin-top: 30px;
        }
        .action-buttons a {
            margin: 0 10px;
            font-size: 1.1rem;
        }
        .card-img-top {
	        width: 100%; /* Make the image span the full width of the card */
	        height: 200px; /* Set a fixed height */
	        object-fit: cover; /* Ensure the image maintains its aspect ratio and fills the dimensions */
    	}
    </style>
</head>
<body>
    <div class="hero-section">
        <h1>Welcome to the Online Quiz System</h1>
        <p>Test your knowledge with our exciting quizzes!</p>
    </div>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4">
                <div class="card shadow-sm">
                <img src="java.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Java</h5>
                        <p class="card-text">Challenge yourself with questions from various topics.</p>
                        <a href="java.jsp" class="btn btn-outline-primary">Start Quiz</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm">
                  <img src="javaservlet.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Java Servlet</h5>
                        <p class="card-text">Explore the question on java servlet.</p>
                        <a href="javaservlet.jsp" class="btn btn-outline-primary">Start Quiz</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm">
                  <img src="frontend.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Frontend</h5>
                        <p class="card-text">Put your frontend knowledge to the test!</p>
                        <a href="frontendquiz.jsp" class="btn btn-outline-primary">Start Quiz</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
