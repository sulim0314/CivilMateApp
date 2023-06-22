package com.my.newapp;

import javax.inject.Inject;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.user.model.UserVO;
import com.user.service.UserService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class UserController {
	
	@Inject 
	private UserService userService;
	
	@RequestMapping(value="/join",method=RequestMethod.GET)
	public String joinForm() {
		
		return "/member/join";
	}
	
	@RequestMapping(value="/join",method=RequestMethod.POST)
	public String createUser(Model m,@ModelAttribute  UserVO user) {

		System.out.println("user=="+user.getName());
				
		if(user.getName()==null||user.getUserid()==null||user.getPwd()==null||
				user.getName().trim().isEmpty()||
				user.getUserid().trim().isEmpty()||
				user.getPwd().trim().isEmpty()) {
			return "redirect:join";
		}
		
		int n = userService.createUser(user);
		String str=(n>0)?"회원가입이 완료되었습니다!":"회원가입에 실패하셨습니다.";
		String str2=(n>0)?"잠시 후 로그인 페이지로 이동합니다.":"다시 회원가입 페이지로 이동합니다.";
		String loc=(n>0)?"login":"javascript:history.back()";
		
		m.addAttribute("msg",str);
		m.addAttribute("msg2",str2);
		m.addAttribute("loc",loc);
		
		return "message";

	}//-----------------------------

	@PostMapping(value = "/idCheck", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String idCheckResult(@RequestParam("userid") String userid) {
		System.out.println("들어왔나요");
		boolean isUse = userService.idCheck(userid);
		String message = isUse ? "사용 가능한 아이디입니다." : "이미 사용 중인 아이디입니다.";
		return message;
	}
	
}






