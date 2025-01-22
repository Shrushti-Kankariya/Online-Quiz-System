<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Quiz</title>
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
            <h1 class="text-center mb-4">Java Quiz</h1>
            <form action="JavaServlet" method="post">
                <!-- Question 1 -->
                <div class="mb-3">
                    <h5>Which of the following is used to handle exceptions in Java?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is used to handle exceptions in Java?" value="try-catch" id="q1_option1">
                        <label class="form-check-label" for="q1_option1">try-catch</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is used to handle exceptions in Java?" value="throws" id="q1_option2">
                        <label class="form-check-label" for="q1_option2">throws</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is used to handle exceptions in Java?" value="finally" id="q1_option3">
                        <label class="form-check-label" for="q1_option3">finally</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is used to handle exceptions in Java?" value="throw" id="q1_option4">
                        <label class="form-check-label" for="q1_option4">throw</label>
                    </div>
                </div>

                <!-- Question 2 -->
                <div class="mb-3">
                    <h5>Which of the following is a correct way to declare a variable in Java?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a correct way to declare a variable in Java?" value="int num;" id="q2_option1">
                        <label class="form-check-label" for="q2_option1">int num;</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a correct way to declare a variable in Java?" value="num int;" id="q2_option2">
                        <label class="form-check-label" for="q2_option2">num int;</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a correct way to declare a variable in Java?" value="num = int;" id="q2_option3">
                        <label class="form-check-label" for="q2_option3">num = int;</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a correct way to declare a variable in Java?" value="int = num;" id="q2_option4">
                        <label class="form-check-label" for="q2_option4">int = num;</label>
                    </div>
                </div>

                <!-- Question 3 -->
                <div class="mb-3">
                    <h5>What does JVM stand for?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does JVM stand for?" value="Java Virtual Machine" id="q3_option1">
                        <label class="form-check-label" for="q3_option1">Java Virtual Machine</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does JVM stand for?" value="Java View Model" id="q3_option2">
                        <label class="form-check-label" for="q3_option2">Java View Model</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does JVM stand for?" value="Java Variable Machine" id="q3_option3">
                        <label class="form-check-label" for="q3_option3">Java Variable Machine</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does JVM stand for?" value="Java Volatile Memory" id="q3_option4">
                        <label class="form-check-label" for="q3_option4">Java Volatile Memory</label>
                    </div>
                </div>

                <!-- Question 4 -->
                <div class="mb-3">
                    <h5>Which of these is a primitive data type in Java?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is a primitive data type in Java?" value="String" id="q4_option1">
                        <label class="form-check-label" for="q4_option1">String</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is a primitive data type in Java?" value="int" id="q4_option2">
                        <label class="form-check-label" for="q4_option2">int</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is a primitive data type in Java?" value="ArrayList" id="q4_option3">
                        <label class="form-check-label" for="q4_option3">ArrayList</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is a primitive data type in Java?" value="Object" id="q4_option4">
                        <label class="form-check-label" for="q4_option4">Object</label>
                    </div>
                </div>

                <!-- Question 5 -->
                <div class="mb-3">
                    <h5>Which keyword is used to create an instance of a class?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which keyword is used to create an instance of a class?" value="new" id="q5_option1">
                        <label class="form-check-label" for="q5_option1">new</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which keyword is used to create an instance of a class?" value="this" id="q5_option2">
                        <label class="form-check-label" for="q5_option2">this</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which keyword is used to create an instance of a class?" value="super" id="q5_option3">
                        <label class="form-check-label" for="q5_option3">super</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which keyword is used to create an instance of a class?" value="instance" id="q5_option4">
                        <label class="form-check-label" for="q5_option4">instance</label>
                    </div>
                </div>

                <!-- Question 6 -->
                <div class="mb-3">
                    <h5>What does the term "inheritance" mean in Java?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the term inheritance mean in Java?" value="A class inherits methods and fields from another class" id="q6_option1">
                        <label class="form-check-label" for="q6_option1">A class inherits methods and fields from another class</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the term inheritance mean in Java?" value="A method inherits data from the class" id="q6_option2">
                        <label class="form-check-label" for="q6_option2">A method inherits data from the class</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the term inheritance mean in Java?" value="Classes can never inherit from other classes" id="q6_option3">
                        <label class="form-check-label" for="q6_option3">Classes can never inherit from other classes</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the term inheritance mean in Java?" value="Inheritance refers to polymorphism" id="q6_option4">
                        <label class="form-check-label" for="q6_option4">Inheritance refers to polymorphism</label>
                    </div>
                </div>

                <!-- Question 7 -->
                <div class="mb-3">
                    <h5>Which of these is a feature of Java?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is a feature of Java?" value="Platform independence" id="q7_option1">
                        <label class="form-check-label" for="q7_option1">Platform independence</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is a feature of Java?" value="Memory manipulation" id="q7_option2">
                        <label class="form-check-label" for="q7_option2">Memory manipulation</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is a feature of Java?" value="Low-level programming" id="q7_option3">
                        <label class="form-check-label" for="q7_option3">Low-level programming</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of these is a feature of Java?" value="None of the above" id="q7_option4">
                        <label class="form-check-label" for="q7_option4">None of the above</label>
                    </div>
                </div>

                <!-- Question 8 -->
                <div class="mb-3">
                    <h5>Which of the following is true about an abstract class in Java?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is true about an abstract class in Java?" value="It cannot have any methods" id="q8_option1">
                        <label class="form-check-label" for="q8_option1">It cannot have any methods</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is true about an abstract class in Java?" value="It can have both abstract and non-abstract methods" id="q8_option2">
                        <label class="form-check-label" for="q8_option2">It can have both abstract and non-abstract methods</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is true about an abstract class in Java?" value="It can only have abstract methods" id="q8_option3">
                        <label class="form-check-label" for="q8_option3">It can only have abstract methods</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is true about an abstract class in Java?" value="Abstract classes are not allowed in Java" id="q8_option4">
                        <label class="form-check-label" for="q8_option4">Abstract classes are not allowed in Java</label>
                    </div>
                </div>

                <!-- Question 9 -->
                <div class="mb-3">
                    <h5>What is the default value of a boolean variable in Java?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default value of a boolean variable in Java?" value="true" id="q9_option1">
                        <label class="form-check-label" for="q9_option1">true</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default value of a boolean variable in Java?" value="false" id="q9_option2">
                        <label class="form-check-label" for="q9_option2">false</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default value of a boolean variable in Java?" value="null" id="q9_option3">
                        <label class="form-check-label" for="q9_option3">null</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the default value of a boolean variable in Java?" value="undefined" id="q9_option4">
                        <label class="form-check-label" for="q9_option4">undefined</label>
                    </div>
                </div>

                <!-- Question 10 -->
                <div class="mb-3">
                    <h5>Which method is used to start a thread in Java?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which method is used to start a thread in Java?" value="start()" id="q10_option1">
                        <label class="form-check-label" for="q10_option1">start()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which method is used to start a thread in Java?" value="init()" id="q10_option2">
                        <label class="form-check-label" for="q10_option2">init()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which method is used to start a thread in Java?" value="run()" id="q10_option3">
                        <label class="form-check-label" for="q10_option3">run()</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which method is used to start a thread in Java?" value="execute()" id="q10_option4">
                        <label class="form-check-label" for="q10_option4">execute()</label>
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
