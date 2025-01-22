package com.demo;

public class UserAnswer {
    private String question;
    private String userAnswer;
    private String correctAnswer;
    private boolean correct;

    public UserAnswer(String question, String userAnswer, String correctAnswer, boolean correct) {
        this.question = question;
        this.userAnswer = userAnswer;
        this.correctAnswer = correctAnswer;
        this.correct = correct;
    }

    public String getQuestion() {
        return question;
    }

    public String getUserAnswer() {
        return userAnswer;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }

    public boolean isCorrect() {
        return correct;
    }
}
