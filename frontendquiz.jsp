<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Frontend Quiz</title>
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
            <h1 class="text-center mb-4">Frontend Quiz</h1>
            <form action="FrontendQuizServlet" method="post">
                <!-- Question 1 -->
                <div class="mb-3">
                    <h5>What does HTML stand for?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does HTML stand for?" value="Hyper Text Markup Language" id="q1_option1">
                        <label class="form-check-label" for="q1_option1">Hyper Text Markup Language</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does HTML stand for?" value="Home Tool Markup Language" id="q1_option2">
                        <label class="form-check-label" for="q1_option2">Home Tool Markup Language</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does HTML stand for?" value="Hyperlinks and Text Markup Language" id="q1_option3">
                        <label class="form-check-label" for="q1_option3">Hyperlinks and Text Markup Language</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does HTML stand for?" value="Hyper Text Machine Language" id="q1_option4">
                        <label class="form-check-label" for="q1_option4">Hyper Text Machine Language</label>
                    </div>
                </div>

                <!-- Question 2 -->
                <div class="mb-3">
                    <h5>Which HTML tag is used for the largest heading?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which HTML tag is used for the largest heading?" value="h1" id="q2_option1">
                        <label class="form-check-label" for="q2_option1">&lt;h1&gt;</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which HTML tag is used for the largest heading?" value="h6" id="q2_option2">
                        <label class="form-check-label" for="q2_option2">&lt;h6&gt;</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which HTML tag is used for the largest heading?" value="h3" id="q2_option3">
                        <label class="form-check-label" for="q2_option3">&lt;h3&gt;</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which HTML tag is used for the largest heading?" value="h5" id="q2_option4">
                        <label class="form-check-label" for="q2_option4">&lt;h5&gt;</label>
                    </div>
                </div>

                <!-- Question 3 -->
                <div class="mb-3">
                    <h5>Which tag is used to create a link in HTML?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which tag is used to create a link in HTML?" value="a" id="q3_option1">
                        <label class="form-check-label" for="q3_option1">&lt;a&gt;</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which tag is used to create a link in HTML?" value="link" id="q3_option2">
                        <label class="form-check-label" for="q3_option2">&lt;link&gt;</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which tag is used to create a link in HTML?" value="href" id="q3_option3">
                        <label class="form-check-label" for="q3_option3">&lt;href&gt;</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which tag is used to create a link in HTML?" value="url" id="q3_option4">
                        <label class="form-check-label" for="q3_option4">&lt;url&gt;</label>
                    </div>
                </div>

                <!-- Question 4 -->
                <div class="mb-3">
                    <h5>What is the purpose of the meta tag in HTML?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the purpose of the <meta> tag in HTML?" value="Define the page's character set" id="q4_option1">
                        <label class="form-check-label" for="q4_option1">Define the page's character set</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the purpose of the <meta> tag in HTML?" value="Provide metadata like description, keywords" id="q4_option2">
                        <label class="form-check-label" for="q4_option2">Provide metadata like description, keywords</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the purpose of the <meta> tag in HTML?" value="Define the title of the webpage" id="q4_option3">
                        <label class="form-check-label" for="q4_option3">Define the title of the webpage</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the purpose of the <meta> tag in HTML?" value="Define the language of the webpage" id="q4_option4">
                        <label class="form-check-label" for="q4_option4">Define the language of the webpage</label>
                    </div>
                </div>

                <!-- Question 5 -->
                <div class="mb-3">
                    <h5>What does CSS stand for?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does CSS stand for?" value="Cascading Style Sheets" id="q5_option1">
                        <label class="form-check-label" for="q5_option1">Cascading Style Sheets</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does CSS stand for?" value="Coded Style Sheets" id="q5_option2">
                        <label class="form-check-label" for="q5_option2">Coded Style Sheets</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does CSS stand for?" value="Creative Style Sheets" id="q5_option3">
                        <label class="form-check-label" for="q5_option3">Creative Style Sheets</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does CSS stand for?" value="Computer Style Sheets" id="q5_option4">
                        <label class="form-check-label" for="q5_option4">Computer Style Sheets</label>
                    </div>
                </div>

                <!-- Question 6 -->
                <div class="mb-3">
                    <h5>Which property is used to change the background color of an element in CSS?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which property is used to change the background color of an element in CSS?" value="background-color" id="q6_option1">
                        <label class="form-check-label" for="q6_option1">background-color</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which property is used to change the background color of an element in CSS?" value="bg-color" id="q6_option2">
                        <label class="form-check-label" for="q6_option2">bg-color</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which property is used to change the background color of an element in CSS?" value="color" id="q6_option3">
                        <label class="form-check-label" for="q6_option3">color</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which property is used to change the background color of an element in CSS?" value="background" id="q6_option4">
                        <label class="form-check-label" for="q6_option4">background</label>
                    </div>
                </div>

                <!-- Question 7 -->
                <div class="mb-3">
				    <h5>Which CSS property is used to control the text size of an element?</h5>
				    <div class="form-check">
				        <input type="radio" class="form-check-input" name="answer_Which CSS property is used to control the text size of an element?" value="font-size" id="q8_option1">
				        <label class="form-check-label" for="q8_option1">font-size</label>
				    </div>
				    <div class="form-check">
				        <input type="radio" class="form-check-input" name="answer_Which CSS property is used to control the text size of an element?" value="text-size" id="q8_option2">
				        <label class="form-check-label" for="q8_option2">text-size</label>
				    </div>
				    <div class="form-check">
				        <input type="radio" class="form-check-input" name="answer_Which CSS property is used to control the text size of an element?" value="size" id="q8_option3">
				        <label class="form-check-label" for="q8_option3">size</label>
				    </div>
				    <div class="form-check">
				        <input type="radio" class="form-check-input" name="answer_Which CSS property is used to control the text size of an element?" value="text-font-size" id="q8_option4">
				        <label class="form-check-label" for="q8_option4">text-font-size</label>
				    </div>
				</div>


                <!-- Question 8 -->
                <div class="mb-3">
                    <h5>What does the JavaScript method `document.getElementById()` return?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the JavaScript method document.getElementById() return?" value="An element with the specified id" id="q8_option1">
                        <label class="form-check-label" for="q8_option1">An element with the specified id</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the JavaScript method document.getElementById() return?" value="All elements on the page" id="q8_option2">
                        <label class="form-check-label" for="q8_option2">All elements on the page</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the JavaScript method document.getElementById() return?" value="The value of the id attribute" id="q8_option3">
                        <label class="form-check-label" for="q8_option3">The value of the id attribute</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What does the JavaScript method document.getElementById() return?" value="An array of elements with the specified id" id="q8_option4">
                        <label class="form-check-label" for="q8_option4">An array of elements with the specified id</label>
                    </div>
                </div>

                <!-- Question 9 -->
                <div class="mb-3">
                    <h5>Which of the following is a JavaScript data type?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a JavaScript data type?" value="String" id="q9_option1">
                        <label class="form-check-label" for="q9_option1">String</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a JavaScript data type?" value="Number" id="q9_option2">
                        <label class="form-check-label" for="q9_option2">Number</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a JavaScript data type?" value="Both" id="q9_option3">
                        <label class="form-check-label" for="q9_option3">Both</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_Which of the following is a JavaScript data type?" value="None" id="q9_option4">
                        <label class="form-check-label" for="q9_option4">None</label>
                    </div>
                </div>

                <!-- Question 10 -->
                <div class="mb-3">
                    <h5>What is the correct syntax for adding a comment in CSS?</h5>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the correct syntax for adding a comment in CSS?" value="/* Comment */" id="q10_option1">
                        <label class="form-check-label" for="q10_option1">/* Comment */</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the correct syntax for adding a comment in CSS?" value="// Comment" id="q10_option2">
                        <label class="form-check-label" for="q10_option2">// Comment</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the correct syntax for adding a comment in CSS?" value="<comment>" id="q10_option3">
                        <label class="form-check-label" for="q10_option3">&lt;comment&gt;</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="answer_What is the correct syntax for adding a comment in CSS?" value="! Comment !" id="q10_option4">
                        <label class="form-check-label" for="q10_option4">! Comment !</label>
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
