package com.wrong.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wrong.mapper.WrongMapper;
import com.wrong.model.WrongVO;


@Controller
public class WrongController {


	@PostMapping("/saveWrongData")
	@ResponseBody
	public int saveWrongData(@RequestBody String sendWrongNum, @RequestBody String sendWrongAns) {

		WrongVO wrong = new WrongVO();
		wrong.setWrongNum(sendWrongNum);
		wrong.setWrongAns(sendWrongAns);
		
//this.wrongMapper.insertWrongData(wrong)
		
		return 0;	
	 }
	    
}
	
	
	
	
	
	

