package com.wrong.model;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class WrongVO {
	
	private int no;
	private String userId;
	private String type;
	private String cha;
	private String wrongNum;
	private String wrongAns;
	
	private int test1;
	private int test2;
	private int test3;
	private int test4;
	private int test5;
	private int test6;
	private String mean;
	
	private Date wdate;
}

