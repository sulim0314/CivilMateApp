package com.my.newapp;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.user.model.UserVO;
import com.wrong.model.WrongVO;
import com.wrong.service.WrongService;

@Controller
public class WritingController {

	@Autowired
	@Resource(name="wrongService")
	private WrongService wrongService;
	
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

	// 오답노트 페이지
	@GetMapping("/wrongAnswer")
	public String wrongAnswer(HttpSession session, Model m) {
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		String userId = loginUser.getUserid();
		
		List<WrongVO> wrongList = wrongService.getSavedWrongByUserId(userId);
		m.addAttribute("savedWrongList", wrongList);
		
		return "writing/wrongAnswer";
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

}
