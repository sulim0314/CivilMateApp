package com.my.newapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wrong.model.WrongVO;
import com.wrong.service.WrongService;


@Controller
public class WrongController { 
	
	@Autowired
	private WrongService wrongService;

	@PostMapping(value = "/saveWrongData", produces = "application/json")
	@ResponseBody
	public void saveWrongData(@RequestBody WrongVO wrong) {
		System.out.println("gggg");
		System.out.println(wrong.getWrongNum());
		
		wrong.setWrongNum(wrong.getWrongNum());
		wrongService.saveWrongData(wrong);
	}

} 

	


