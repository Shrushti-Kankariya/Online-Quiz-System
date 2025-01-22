package com.demo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/FrontendQuizServlet")
public class FrontendQuizServlet extends HttpServlet {

//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//    	
//    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	//doGet(request, response);
    	
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

        // List of questions with their correct answers and user answers
        questions.add(new Question("What does HTML stand for?",
            "Hyper Text Markup Language", request.getParameter("answer_What does HTML stand for?")));
        questions.add(new Question("Which HTML tag is used for the largest heading?",
            "h1", request.getParameter("answer_Which HTML tag is used for the largest heading?")));
        questions.add(new Question("Which tag is used to create a link in HTML?",
            "a", request.getParameter("answer_Which tag is used to create a link in HTML?")));
        questions.add(new Question("What is the purpose of the <meta> tag in HTML?",
            "Provide metadata like description, keywords", request.getParameter("answer_What is the purpose of the <meta> tag in HTML?")));
        questions.add(new Question("What does CSS stand for?",
            "Cascading Style Sheets", request.getParameter("answer_What does CSS stand for?")));
        questions.add(new Question("Which property is used to change the background color of an element in CSS?",
            "background-color", request.getParameter("answer_Which property is used to change the background color of an element in CSS?")));
        questions.add(new Question("Which CSS property is used to control the text size of an element?",
                "font-size", request.getParameter("answer_Which CSS property is used to control the text size of an element?")));
        questions.add(new Question("What does the JavaScript method document.getElementById() return?",
            "An element with the specified id", request.getParameter("answer_What does the JavaScript method document.getElementById() return?")));
        questions.add(new Question("Which of the following is a JavaScript data type?",
            "Both", request.getParameter("answer_Which of the following is a JavaScript data type?")));
        questions.add(new Question("What is the correct syntax for adding a comment in CSS?",
            "/* Comment */", request.getParameter("answer_What is the correct syntax for adding a comment in CSS?")));

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
