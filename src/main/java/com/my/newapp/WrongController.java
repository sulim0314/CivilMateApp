package com.my.newapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wrong.model.WrongVO;

@Controller
public class WrongController {

	@PostMapping(value = "/saveWrongData", produces = "application/json")
	@ResponseBody
	public int insertWrongData(@RequestBody WrongVO wrong) {
		String sendWrongNum = wrong.getWrongNum();
	    String sendWrongAns = wrong.getWrongAns();
//		WrongVO wrong = new WrongVO();
//		wrong.setWrongNum(sendWrongNum);
//		wrong.setWrongAns(sendWrongAns);
		System.out.println("gggggg");
		return 0;

	}

	/*
	  @RequestParam String sendWrongNum, @RequestParam String sendWrongAns private
	  final WrongMapper wrongMapper;
	  
	  @Autowired // WrongMapper 주입 
	  public WrongController(WrongMapper wrongMapper){ 
	  	this.wrongMapper = wrongMapper; 
	  	}
	  
	  @PostMapping("/saveWrongData") // 서버로 보내기
	  @ResponseBody 
	  public void saveWrongData(@RequestBody String sendWrongNum, @RequestBody String sendWrongAns) {
	  
	  WrongVO wrong = new WrongVO(); wrong.setWrongNum(sendWrongNum);
	  wrong.setWrongAns(sendWrongAns);
	  
	  WrongMapper wrongMapper = null; 
	  wrongMapper.insertWrongData(wrong);
	  
	 }
	 */

}
