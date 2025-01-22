<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.demo.Question" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h1 class="text-center">Your Quiz Score</h1>
        <div class="alert alert-info text-center">
            <strong>Your Score: </strong> <%= request.getAttribute("score") %> out of <%= request.getAttribute("totalQuestions") %>
        </div>

        <h2 class="mt-4">Review Your Answers:</h2>
        <div class="list-group">
            <% 
    List<Question> questions = (List<Question>) request.getAttribute("questions");
    for (Question question : questions) {
        String userAnswer = question.getUserAnswer() != null ? question.getUserAnswer() : "No Answer";
        String correctAnswer = question.getCorrectAnswer() != null ? question.getCorrectAnswer() : "No Correct Answer Provided";
%>
    <div class="list-group-item">
        <h5 class="mb-2"><%= question.getQuestionText() %></h5>
        <p><strong>Your Answer:</strong> <%= userAnswer %></p>
        <p><strong>Correct Answer:</strong> <%= correctAnswer %></p>
        <p>
            <strong>Status:</strong>
            <span class="badge <%= (userAnswer.equals(correctAnswer) ? "bg-success" : "bg-danger") %>">
                <%= userAnswer.equals(correctAnswer) ? "Correct" : "Incorrect" %>
            </span>
        </p>
    </div>
<% } %>
        </div>

        <div class="text-center mt-4">
            <a href="index.jsp" class="btn btn-primary">Retake Quiz</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
