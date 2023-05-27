package com.test.questions;

import lombok.Data;

//문제와 선택지를 저장하는 클래스
@Data
public class Qy2022c1 {
	private String question;
    private String[] choices;
    private int correctAnswer;

    public Qy2022c1(String question, String[] choices, int correctAnswer) {
        this.question = question;
        this.choices = choices;
        this.correctAnswer = correctAnswer;
    }

    // Getters and setters for question, choices, and correctAnswer
    // ...
    
    
}
