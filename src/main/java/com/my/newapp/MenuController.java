package com.my.newapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MenuController {
	
	@GetMapping("/join")
	public String join() {
		
		return "member/join";
	}
	
	@GetMapping("/login")
	public String login() {
		
		return "member/login";
	}
}
