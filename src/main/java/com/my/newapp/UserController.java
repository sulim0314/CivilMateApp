package com.my.newapp;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.user.model.NotUserException;
import com.user.model.UserVO;
import com.user.service.UserService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class UserController {
	
	@Inject 
	private UserService userService;
	
	@GetMapping("/join")
	public String joinForm() {
		
		return "/member/join";
	}
	
	@PostMapping("/join")
	public String createUser(Model m,@ModelAttribute  UserVO user) {
				
		if(user.getName()==null||user.getUserid()==null||user.getPwd()==null||
				user.getName().trim().isEmpty()||
				user.getUserid().trim().isEmpty()||
				user.getPwd().trim().isEmpty()) {
			return "redirect:join";
		}
		
		int n = userService.createUser(user);
		String str=(n>0)?"회원가입이 완료되었습니다!":"회원가입에 실패하셨습니다.";
		String loc=(n>0)?"login":"javascript:history.back()";
		
		m.addAttribute("msg",str);
		m.addAttribute("loc",loc);
		
		return "message";

	}//-----------------------------

	@PostMapping(value = "/idCheck", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String idCheckResult(@RequestParam("userid") String userid) {
		
		boolean isUse = userService.idCheck(userid);
		String message = isUse ? "사용 가능한 아이디입니다." : "이미 사용 중인 아이디입니다.";
		
		return message;
	}
	
	
	@GetMapping("/findId")
	public String findId() {
		
		return "/member/findId";
	}
	
	@GetMapping("/findPw")
	public String findPw() {
		
		return "/member/findPw";
	}
	
	@GetMapping("/myPage")
	public String myPage(HttpSession session) {
		
		return "member/myPage";
	}

	@GetMapping("/newPwd")
	public String newPwd(HttpSession session) {
		
		return "member/newPwd";
	}
	
	@GetMapping("/newEmail")
	public String newEmail(HttpSession session) {
		
		return "member/newEmail";
	}
	
	@PostMapping("/updatePwd")
	public String updatePwd(Model m, @ModelAttribute  UserVO user, @RequestParam("userid") String userid, 
							@RequestParam("pwd") String pwd , @RequestParam("newPwd2") String pwd2 ) throws NotUserException {
				
		String prevPwd = pwd;
		user.setUserid(userid);
		user.setPwd(pwd2); // 새 비밀번호
	
		// 새 비밀번호가 null일 때, 마이페이지로 돌아가기
		if(user.getPwd()==null||user.getPwd().trim().isEmpty()) {
			return "redirect:myPage";
		}
		
		userService.updatePwd(prevPwd, user);

		String str = "비밀번호가 변경되었습니다. ";
			   str+= "로그아웃 됩니다.";
		String loc = "/logout";
		
		m.addAttribute("msg",str);
		m.addAttribute("loc",loc);
		
		return "message";
	}
	
}







