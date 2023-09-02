package com.my.newapp;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.user.model.UserVO;
import com.wrong.model.WrongVO;
import com.wrong.service.WrongService;


@Controller
public class WrongController { 
	
	@Autowired
	@Resource(name="wrongService")
	private WrongService wrongService;

	@PostMapping(value = "/insertWrongData", produces = "application/json")
	@ResponseBody
	public ModelMap insertWrongData(@RequestBody Map<String, String> requestBody, HttpSession session) {
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		String userId = loginUser.getUserid();
		String type = requestBody.get("type");
		String cha = requestBody.get("testCha");
		String wrongNum = requestBody.get("wrongNum");
		String wrongAns = requestBody.get("wrongAns");
		
		WrongVO wrong = new WrongVO();
		wrong.setUserId(userId);
		wrong.setType(type);
		wrong.setCha(cha);
		wrong.setWrongNum(wrongNum);
		wrong.setWrongAns(wrongAns);
		
		int n = wrongService.insertWrongData(wrong);
		
		ModelMap map = new ModelMap();
		map.addAttribute("result", n);
		
		return map;
	}
	
	@GetMapping(value="/confirmPage")
	public String selectWrongData(Model m, HttpSession session) {
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		String userId = loginUser.getUserid();
		
	    // 데이터베이스에서 데이터 가져오기
	    WrongVO wrongData = wrongService.selectWrongData(userId); 
	    
	    m.addAttribute("wrongNum", wrongData.getWrongNum());
	    m.addAttribute("wrongAns", wrongData.getWrongAns());
	    
	    return "writing/confirmPage";
	}

	@PostMapping(value="/saveWrongData", produces = "application/json")
	@ResponseBody
	public ModelMap saveWrongData(@RequestBody Map<String, String> requestBody, HttpSession session) {
		
		UserVO loginUser = (UserVO) session.getAttribute("loginUser");
		String userId = loginUser.getUserid();
		
		String type = requestBody.get("type");
		String cha = requestBody.get("testCha");
		int test1 = Integer.parseInt(requestBody.get("test1"));
		int test2 = Integer.parseInt(requestBody.get("test2"));
		int test3 = Integer.parseInt(requestBody.get("test3"));
		int test4 = Integer.parseInt(requestBody.get("test4"));
		int test5 = Integer.parseInt(requestBody.get("test5"));
		int test6 = Integer.parseInt(requestBody.get("test6"));
		String mean = requestBody.get("mean");

		WrongVO wrong = new WrongVO();
		wrong.setUserId(userId);
		wrong.setType(type);
		wrong.setCha(cha);
		wrong.setTest1(test1);
		wrong.setTest2(test2);
		wrong.setTest3(test3);
		wrong.setTest4(test4);
		wrong.setTest5(test5);
		wrong.setTest6(test6);
		wrong.setMean(mean);
		
		System.out.println(userId);
		System.out.println(type);
		System.out.println(cha);
		System.out.println(test1);
		System.out.println(test2);
		System.out.println(test3);
		System.out.println(test4);
		System.out.println(test5);
		System.out.println(test6);
		System.out.println(mean);
		
		int n = wrongService.saveWrong(wrong);
		
		ModelMap map = new ModelMap();
		map.addAttribute("result", n);
		
		return map;
		
	}
	
	
	
} 

	


