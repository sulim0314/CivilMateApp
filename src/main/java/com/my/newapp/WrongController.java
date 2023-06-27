package com.my.newapp;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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
	public ModelMap insertWrongData(@RequestBody WrongVO wrong) {
		
		int n = wrongService.insertWrongData(wrong);
		
		ModelMap map = new ModelMap();
		map.addAttribute("result", n);
		
		return map;
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

	


