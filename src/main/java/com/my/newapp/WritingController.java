package com.my.newapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WritingController {

	@GetMapping("/prev_test")
	public String prevTest() {
		
		return "writing/previousTest";
		//WEB-INF/views/writing/previousTest.jsp
	}
	// 1문제 연습문제 ---------------------------
	@GetMapping("/q1Test")
	public String q1Test() {
		return "writingPrevTest/q1Test";
	}
	// 20문제 --------------------------------
	@GetMapping("/q20Test")
	public String q20Test() {
		return "writingPrevTest/q20Test";
	}
	// 120문제 -------------------------------
	@GetMapping("/q120Test")
	public String q120Test() {
		return "writingPrevTest/q120Test";
	}
	// 몇년도 몇 회 시험 끝---------------------------------------------
	// 모의고사
	@GetMapping("/mockTest")//없애
	public String mockTest() {
		
		return "writing/mockTest";
		//WEB-INF/views/writing/mockTest.jsp
	}
	// 오답노트 페이지
	@GetMapping("/wrongAnswer")
	public String wrongAnswer() {
		
		return "writing/wrongAnswer";
		//WEB-INF/views/writing/wrongAnswer.jsp
	}
	
	@GetMapping("/submitPage")
	public String submitPage() {
		
		return "writing/submitPage";
	}

	
	@GetMapping("/submit20Page")
	public String submit20Page() {
		
		return "writing/submit20Page";
	} //-----------------------------------------

	@GetMapping("/qnaRegister")
	public String qnaRegister() {
		
		return "practical/qnaRegister";
	}
	
	
	
	@GetMapping("/sampleQ") // 나중에 없애기
	public String sampleQ() {
		
		return "writingPrevTest/sampleQ";
	}

}
