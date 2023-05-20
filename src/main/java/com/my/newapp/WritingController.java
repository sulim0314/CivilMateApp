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
	
}
