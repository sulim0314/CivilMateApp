package com.my.newapp;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wrong.model.WrongVO;
import com.wrong.service.WrongService;


@Controller
public class WrongController { 
	
	@Autowired
	@Resource(name="wrongService")
	private WrongService wrongService;

	@PostMapping(value = "/insertWrongData", produces = "application/json")
	@ResponseBody
	public void insertWrongData(@RequestBody WrongVO wrong) {
		
		System.out.println("틀린 데이터");
		
		System.out.println(wrong.getWrongNum());
		System.out.println(wrong.getWrongAns());
		
		wrong.setWrongNum(wrong.getWrongNum());
		wrong.setWrongAns(wrong.getWrongAns());
		
		wrongService.insertWrongData(wrong);
	}
	
	@GetMapping(value="/confirmPage")
	public String selectWrongData(Model m) {
		
	    // 데이터베이스에서 데이터 가져오기
	    WrongVO wrongData = wrongService.selectWrongData(); 
	    
	    m.addAttribute("wrongNum", wrongData.getWrongNum());
	    m.addAttribute("wrongAns", wrongData.getWrongAns());
	    
	    return "writing/confirmPage";
	}

} 

	


