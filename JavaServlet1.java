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


@WebServlet("/JavaServlet1")
public class JavaServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JavaServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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

        // List of questions with their correct answers and user answers
        questions.add(new Question("Which of the following is a correct way to define a Servlet?",
            "extends HttpServlet", request.getParameter("answer_Which of the following is a correct way to define a Servlet?")));
        questions.add(new Question("Which method is overridden to handle HTTP requests in a Servlet?",
            "doGet()", request.getParameter("answer_Which method is overridden to handle HTTP requests in a Servlet?")));
        questions.add(new Question("Which file is used to map a servlet in a Java web application?",
            "web.xml", request.getParameter("answer_Which file is used to map a servlet in a Java web application?")));
        questions.add(new Question("What is the default life cycle method that is called when a Servlet is loaded for the first time?",
            "init()", request.getParameter("answer_What is the default life cycle method that is called when a Servlet is loaded for the first time?")));
        questions.add(new Question("Which of these methods is used to send a response to the client in a Servlet?",
            "getWriter()", request.getParameter("answer_Which of these methods is used to send a response to the client in a Servlet?")));
        questions.add(new Question("What does the `destroy()` method in a Servlet do?",
            "Closes database connections and releases resources", request.getParameter("answer_What does the destroy() method in a Servlet do?")));
        questions.add(new Question("Which annotation is used to define a Servlet in modern Java EE?",
            "@WebServlet", request.getParameter("answer_Which annotation is used to define a Servlet in modern Java EE?")));
        questions.add(new Question("What is the default value of `doGet()` method in a Servlet?",
            "Returns data from a GET request", request.getParameter("answer_What is the default value of `doGet()` method in a Servlet?")));
        questions.add(new Question("Which of these is the Servlet container in Java?",
            "All of the above", request.getParameter("answer_Which of these is the Servlet container in Java?")));
        questions.add(new Question("Which is the default HTTP method for a Servlet?",
            "GET", request.getParameter("answer_Which is the default HTTP method for a Servlet?")));

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
