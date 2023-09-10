package com.my.newapp;

import java.util.ArrayList;
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
		
		List<String> testTitleList = new ArrayList<>();
		
		for(int i=0; i<wrongList.size(); i++) {
			
			String testCha = wrongList.get(i).getCha();
			
			String testTitle = "";

	        switch (testCha) {
		        case "y2022c2":
		            testTitle = "[2022년도 2회 토목기사 필기]";
		            break;
		        case "y2022c1":
		            testTitle = "[2022년도 1회 토목기사 필기]";
		            break;
		        case "y2021c3":
		            testTitle = "[2021년도 3회 토목기사 필기]";
		            break;
		        case "y2021c2":
		            testTitle = "[2021년도 2회 토목기사 필기]";
		            break;
		        case "y2021c1":
		            testTitle = "[2021년도 1회 토목기사 필기]";
		            break;
		        case "y2020c4":
		            testTitle = "[2020년도 4회 토목기사 필기]";
		            break;
		        case "y2020c3":
		            testTitle = "[2020년도 3회 토목기사 필기]";
		            break;
		        case "y2020c12":
		            testTitle = "[2020년도 12회 토목기사 필기]";
		            break;
		        case "y2019c3":
		            testTitle = "[2019년도 3회 토목기사 필기]";
		            break;
		        case "y2019c2":
		            testTitle = "[2019년도 2회 토목기사 필기]";
		            break;
		        case "y2019c1":
		            testTitle = "[2019년도 1회 토목기사 필기]";
		            break;
		        case "y2018c3":
		            testTitle = "[2018년도 3회 토목기사 필기]";
		            break;
		        case "y2018c2":
		            testTitle = "[2018년도 2회 토목기사 필기]";
		            break;
		        case "y2018c1":
		            testTitle = "[2018년도 1회 토목기사 필기]";
		            break;
		        case "y2017c4":
		            testTitle = "[2017년도 4회 토목기사 필기]";
		            break;
		        case "y2017c2":
		            testTitle = "[2017년도 2회 토목기사 필기]";
		            break;
		        case "y2017c1":
		            testTitle = "[2017년도 1회 토목기사 필기]";
		            break;
		        case "y2016c4":
		            testTitle = "[2016년도 4회 토목기사 필기]";
		            break;
		        case "y2016c2":
		            testTitle = "[2016년도 2회 토목기사 필기]";
		            break;
		        case "y2016c1":
		            testTitle = "[2016년도 1회 토목기사 필기]";
		            break;
		        case "y2015c4":
		            testTitle = "[2015년도 4회 토목기사 필기]";
		            break;
		        case "y2015c2":
		            testTitle = "[2015년도 2회 토목기사 필기]";
		            break;
		        case "y2015c1":
		            testTitle = "[2015년도 1회 토목기사 필기]";
		            break;
		        case "y2014c4":
		            testTitle = "[2014년도 4회 토목기사 필기]";
		            break;
		        case "y2014c2":
		            testTitle = "[2014년도 2회 토목기사 필기]";
		            break;
		        case "y2014c1":
		            testTitle = "[2014년도 1회 토목기사 필기]";
		            break;
		        case "y2013c4":
		            testTitle = "[2013년도 4회 토목기사 필기]";
		            break;
		        case "y2013c2":
		            testTitle = "[2013년도 2회 토목기사 필기]";
		            break;
		        case "y2013c1":
		            testTitle = "[2013년도 1회 토목기사 필기]";
		            break;
		        case "y2012c4":
		            testTitle = "[2012년도 4회 토목기사 필기]";
		            break;
		        case "y2012c2":
		            testTitle = "[2012년도 2회 토목기사 필기]";
		            break;
		        case "y2012c1":
		            testTitle = "[2012년도 1회 토목기사 필기]";
		            break;
		        case "y2011c4":
		            testTitle = "[2011년도 4회 토목기사 필기]";
		            break;
		        case "y2011c2":
		            testTitle = "[2011년도 2회 토목기사 필기]";
		            break;
		        case "y2011c1":
		            testTitle = "[2011년도 1회 토목기사 필기]";
		            break;
		        case "y2010c4":
		            testTitle = "[2010년도 4회 토목기사 필기]";
		            break;
		        case "y2010c2":
		            testTitle = "[2010년도 2회 토목기사 필기]";
		            break;
		        case "y2010c1":
		            testTitle = "[2010년도 1회 토목기사 필기]";
		            break;
		        }
	        wrongList.get(i).setTestTitle(testTitle);
	        testTitleList.add(testTitle);
		}
		
		m.addAttribute("savedWrongList", wrongList);
		m.addAttribute("testTitleList", testTitleList);
		
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
