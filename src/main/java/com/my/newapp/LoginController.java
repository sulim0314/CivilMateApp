package com.my.newapp;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.user.model.NotUserException;
import com.user.model.UserVO;
import com.user.service.UserService;

@Controller
public class LoginController {
	
	@Resource(name="userService")
	private UserService userService;
	
	@GetMapping("/login")
	public String login() {
		
		return "member/login";
	}
	
	@PostMapping("/login")
	public String loginProcess(HttpSession session, HttpServletResponse response,
			@ModelAttribute("user") UserVO user,
			@RequestParam(defaultValue="off") String saveId) throws NotUserException {
		
		if(user.getUserid()==null||user.getPwd()==null||user.getUserid().trim().isEmpty()||user.getPwd().trim().isEmpty()) {
			return "redirect:/login";
		}
		
		UserVO loginUser = userService.loginCheck(user.getUserid(), user.getPwd());

		if(loginUser!=null) {
			session.setAttribute("loginUser", loginUser);
			Cookie ck=new Cookie("userid", loginUser.getUserid());
			
			if(saveId.equals("on")) {
				ck.setMaxAge(7*24*60*60);
			} else {
				ck.setMaxAge(0);
			}
			
			ck.setPath("/");
			response.addCookie(ck);
		}
		
		return "redirect:/";
	}//--------------------
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}//--------------------

}




