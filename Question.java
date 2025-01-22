package com.demo;

public class Question {
    private String questionText;
    private String correctAnswer;
    private String userAnswer;

    public Question(String questionText, String correctAnswer, String userAnswer) {
        this.questionText = questionText;
        this.correctAnswer = correctAnswer;
        this.userAnswer = userAnswer;
    }

    public String getQuestionText() {
        return questionText;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }

    public String getUserAnswer() {
        return userAnswer;
    }
}
