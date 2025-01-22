package com.demo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/JavaServlet")
public class JavaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the list of questions dynamically (these can also be fetched from a database)
        List<Question> questions = getQuestionsFromRequest(request);

        // Calculate the score based on the user's answers
        int score = calculateScore(questions);

        // Total number of questions
        int totalQuestions = questions.size();

        // Set attributes for use in JSP
        request.setAttribute("score", score);
        request.setAttribute("totalQuestions", totalQuestions);
        request.setAttribute("questions", questions);

        // Forward to the result page
        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request, response);
    }

    // Method to get questions from the form request
    private List<Question> getQuestionsFromRequest(HttpServletRequest request) {
        List<Question> questions = new ArrayList<>();

        // You can loop through the questions and dynamically extract answers
        questions.add(new Question("Which of the following is used to handle exceptions in Java?", 
            "try-catch", request.getParameter("answer_Which of the following is used to handle exceptions in Java?")));
        questions.add(new Question("Which of the following is a correct way to declare a variable in Java?", 
            "int num;", request.getParameter("answer_Which of the following is a correct way to declare a variable in Java?")));
        questions.add(new Question("What does JVM stand for?", 
            "Java Virtual Machine", request.getParameter("answer_What does JVM stand for?")));
        questions.add(new Question("Which of these is a primitive data type in Java?", 
            "int", request.getParameter("answer_Which of these is a primitive data type in Java?")));
        questions.add(new Question("Which keyword is used to create an instance of a class?", 
            "new", request.getParameter("answer_Which keyword is used to create an instance of a class?")));
        questions.add(new Question("What does the term 'inheritance' mean in Java?", 
            "A class inherits methods and fields from another class", request.getParameter("answer_What does the term inheritance mean in Java?")));
        questions.add(new Question("Which of these is a feature of Java?", 
            "Platform independence", request.getParameter("answer_Which of these is a feature of Java?")));
        questions.add(new Question("Which of the following is true about an abstract class in Java?", 
            "It can have both abstract and non-abstract methods", request.getParameter("answer_Which of the following is true about an abstract class in Java?")));
        questions.add(new Question("What is the default value of a boolean variable in Java?", 
            "false", request.getParameter("answer_What is the default value of a boolean variable in Java?")));
        questions.add(new Question("Which method is used to start a thread in Java?", 
            "start()", request.getParameter("answer_Which method is used to start a thread in Java?")));

        return questions;
    }

    // Method to calculate the score
    private int calculateScore(List<Question> questions) {
        int score = 0;

        for (Question question : questions) {
            if (question.getUserAnswer() != null && question.getUserAnswer().equals(question.getCorrectAnswer())) {
                score++;
            }
        }

        return score;
    }
}