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
		// previousTest.jsp에서 22년도 2회 저장해놔야함
		return "writingPrevTest/q1Test";
	}
	
	// 몇년도 몇 회 시험 리스트 ---------------------------------------------
	@GetMapping("/y2022c2")
	public String y2022c2() {
		
		return "writingPrevTest/y2022c2";
		//WEB-INF/views/writingPrevTest/2022y2c.jsp
	}
	@GetMapping("/y2022c1")
	public String y2022c1() {
		
		return "writingPrevTest/y2022c1";
	}
	@GetMapping("/y2021c3")
	public String y2021c3() {
		
		return "writingPrevTest/y2021c3";
	}
	
	
	
	
	
	
	
	
	// 몇년도 몇 회 시험 끝---------------------------------------------
	// 모의고사
	@GetMapping("/mockTest")
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
	
	@GetMapping("/submitPage") // 나중에 없애기
	public String submitPage() {
		
		return "writing/submitPage";
	}
	
	
	
	
	
	@GetMapping("/sampleQ") // 나중에 없애기
	public String sampleQ() {
		
		return "writingPrevTest/sampleQ";
	}
	
	
	
	
}
