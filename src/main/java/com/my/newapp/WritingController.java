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
	
	@GetMapping("/y2022c2Test")
	public String y2022c2Test() {
		
		return "writingPrevTest/y2022c2";
		//WEB-INF/views/writingPrevTest/2022y2c.jsp
	}
	
	@GetMapping("/mockTest")
	public String mockTest() {
		
		return "writing/mockTest";
		//WEB-INF/views/writing/mockTest.jsp
	}
	
	@GetMapping("/wrongAnswer")
	public String wrongAnswer() {
		
		return "writing/wrongAnswer";
		//WEB-INF/views/writing/wrongAnswer.jsp
	}
	
}
