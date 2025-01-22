<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Servlet Quiz</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .quiz-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .quiz-container h1 {
            color: #007bff;
            font-size: 2rem;
        }
        .quiz-container h5 {
            font-size: 1.25rem;
        }
        .form-check {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="quiz-container">
            <h1 class="text-center mb-4">Java Servlet Quiz</h1>
            <form action="JavaServlet1" method="post">
                <!-- Question 1 -->
                <div class="mb-3">
                    <h5>Which of the following is a correct way to define a Servlet?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a correct way to define a Servlet?" value="extends HttpServlet" id="q1_option1">
                        <label class="form-check-label" for="q1_option1">extends HttpServlet</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a correct way to define a Servlet?" value="implements Servlet" id="q1_option2">
                        <label class="form-check-label" for="q1_option2">implements Servlet</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a correct way to define a Servlet?" value="implements HttpServlet" id="q1_option3">
                        <label class="form-check-label" for="q1_option3">implements HttpServlet</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a correct way to define a Servlet?" value="extends Servlet" id="q1_option4">
                        <label class="form-check-label" for="q1_option4">extends Servlet</label>
                    </div>
                </div>

                <!-- Question 2 -->
                <div class="mb-3">
                    <h5>Which method is overridden to handle HTTP requests in a Servlet?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which method is overridden to handle HTTP requests in a Servlet?" value="doPost()" id="q2_option1">
                        <label class="form-check-label" for="q2_option1">doPost()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which method is overridden to handle HTTP requests in a Servlet?" value="doGet()" id="q2_option2">
                        <label class="form-check-label" for="q2_option2">doGet()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which method is overridden to handle HTTP requests in a Servlet?" value="service()" id="q2_option3">
                        <label class="form-check-label" for="q2_option3">service()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which method is overridden to handle HTTP requests in a Servlet?" value="init()" id="q2_option4">
                        <label class="form-check-label" for="q2_option4">init()</label>
                    </div>
                </div>

                <!-- Question 3 -->
                <div class="mb-3">
                    <h5>Which file is used to map a servlet in a Java web application?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which file is used to map a servlet in a Java web application?" value="web.xml" id="q3_option1">
                        <label class="form-check-label" for="q3_option1">web.xml</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which file is used to map a servlet in a Java web application?" value="servlet-mapping.xml" id="q3_option2">
                        <label class="form-check-label" for="q3_option2">servlet-mapping.xml</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which file is used to map a servlet in a Java web application?" value="application.xml" id="q3_option3">
                        <label class="form-check-label" for="q3_option3">application.xml</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which file is used to map a servlet in a Java web application?" value="context.xml" id="q3_option4">
                        <label class="form-check-label" for="q3_option4">context.xml</label>
                    </div>
                </div>

                <!-- Question 4 -->
                <div class="mb-3">
                    <h5>What is the default life cycle method that is called when a Servlet is loaded for the first time?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default life cycle method that is called when a Servlet is loaded for the first time?" value="init()" id="q4_option1">
                        <label class="form-check-label" for="q4_option1">init()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default life cycle method that is called when a Servlet is loaded for the first time?" value="service()" id="q4_option2">
                        <label class="form-check-label" for="q4_option2">service()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default life cycle method that is called when a Servlet is loaded for the first time?" value="destroy()" id="q4_option3">
                        <label class="form-check-label" for="q4_option3">destroy()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default life cycle method that is called when a Servlet is loaded for the first time?" value="doGet()" id="q4_option4">
                        <label class="form-check-label" for="q4_option4">doGet()</label>
                    </div>
                </div>

                <!-- Question 5 -->
                <div class="mb-3">
                    <h5>Which of these methods is used to send a response to the client in a Servlet?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these methods is used to send a response to the client in a Servlet?" value="getWriter()" id="q5_option1">
                        <label class="form-check-label" for="q5_option1">getWriter()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these methods is used to send a response to the client in a Servlet?" value="sendResponse()" id="q5_option2">
                        <label class="form-check-label" for="q5_option2">sendResponse()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these methods is used to send a response to the client in a Servlet?" value="response.write()" id="q5_option3">
                        <label class="form-check-label" for="q5_option3">response.write()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these methods is used to send a response to the client in a Servlet?" value="sendData()" id="q5_option4">
                        <label class="form-check-label" for="q5_option4">sendData()</label>
                    </div>
                </div>

                <!-- Question 6 -->
                <div class="mb-3">
                    <h5>What does the `destroy()` method in a Servlet do?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the destroy() method in a Servlet do?" value="Closes database connections and releases resources" id="q6_option1">
                        <label class="form-check-label" for="q6_option1">Closes database connections and releases resources</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the destroy() method in a Servlet do?" value="Initializes the Servlet" id="q6_option2">
                        <label class="form-check-label" for="q6_option2">Initializes the Servlet</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the destroy() method in a Servlet do?" value="Processes HTTP requests" id="q6_option3">
                        <label class="form-check-label" for="q6_option3">Processes HTTP requests</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the destroy() method in a Servlet do?" value="Starts the Servlet" id="q6_option4">
                        <label class="form-check-label" for="q6_option4">Starts the Servlet</label>
                    </div>
                </div>

                <!-- Question 7 -->
                <div class="mb-3">
                    <h5>Which annotation is used to define a Servlet in modern Java EE?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which annotation is used to define a Servlet in modern Java EE?" value="@WebServlet" id="q7_option1">
                        <label class="form-check-label" for="q7_option1">@WebServlet</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which annotation is used to define a Servlet in modern Java EE?" value="@Servlet" id="q7_option2">
                        <label class="form-check-label" for="q7_option2">@Servlet</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which annotation is used to define a Servlet in modern Java EE?" value="@ServletMapping" id="q7_option3">
                        <label class="form-check-label" for="q7_option3">@ServletMapping</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which annotation is used to define a Servlet in modern Java EE?" value="@WebListener" id="q7_option4">
                        <label class="form-check-label" for="q7_option4">@WebListener</label>
                    </div>
                </div>

                <!-- Question 8 -->
                <div class="mb-3">
                    <h5>What is the default value of `doGet()` method in a Servlet?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default value of doGet() method in a Servlet?" value="Returns data from a GET request" id="q8_option1">
                        <label class="form-check-label" for="q8_option1">Returns data from a GET request</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default value of doGet() method in a Servlet?" value="Handles POST requests" id="q8_option2">
                        <label class="form-check-label" for="q8_option2">Handles POST requests</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default value of doGet() method in a Servlet?" value="Processes PUT requests" id="q8_option3">
                        <label class="form-check-label" for="q8_option3">Processes PUT requests</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default value of doGet() method in a Servlet?" value="Returns data from a POST request" id="q8_option4">
                        <label class="form-check-label" for="q8_option4">Returns data from a POST request</label>
                    </div>
                </div>

                <!-- Question 9 -->
                <div class="mb-3">
                    <h5>Which of these is the Servlet container in Java?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is the Servlet container in Java?" value="Tomcat" id="q9_option1">
                        <label class="form-check-label" for="q9_option1">Tomcat</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is the Servlet container in Java?" value="Jetty" id="q9_option2">
                        <label class="form-check-label" for="q9_option2">Jetty</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is the Servlet container in Java?" value="WebLogic" id="q9_option3">
                        <label class="form-check-label" for="q9_option3">WebLogic</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is the Servlet container in Java?" value="All of the above" id="q9_option4">
                        <label class="form-check-label" for="q9_option4">All of the above</label>
                    </div>
                </div>

                <!-- Question 10 -->
                <div class="mb-3">
                    <h5>Which is the default HTTP method for a Servlet?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which is the default HTTP method for a Servlet?" value="GET" id="q10_option1">
                        <label class="form-check-label" for="q10_option1">GET</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which is the default HTTP method for a Servlet?" value="POST" id="q10_option2">
                        <label class="form-check-label" for="q10_option2">POST</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which is the default HTTP method for a Servlet?" value="PUT" id="q10_option3">
                        <label class="form-check-label" for="q10_option3">PUT</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which is the default HTTP method for a Servlet?" value="DELETE" id="q10_option4">
                        <label class="form-check-label" for="q10_option4">DELETE</label>
                    </div>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
