package com.wrong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.wrong.model.WrongDAO;


@Controller
public class WrongController {

	//@Autowired : MemoDAO타입의 객체가 있으면 해당 객체를 주입해준다
	@Autowired
	private WrongDAO wrongDao;
	
	
	
	
	
	
	
	
}
