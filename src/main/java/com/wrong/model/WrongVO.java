package com.wrong.model;

import lombok.Data;

@Data
public class WrongVO {
	
	private int no;
	private String wrongNum;
	private String wrongAns;
	
	public WrongVO() {
		this(0,null,null);
	}
	
	public WrongVO(int no, String wrongNum, String wrongAns) {
		super();
		this.no = no;
		this.wrongNum = wrongNum;
		this.wrongAns = wrongAns;
	}

	
	
	
	
	//-------------------------------- getter, setter -------------
	public String getWrongNum() {
		return wrongNum;
	}

	public void setWrongNum(String wrongNum) {
		this.wrongNum = wrongNum;
	}

	public String getWrongAns() {
		return wrongAns;
	}

	public void setWrongAns(String wrongAns) {
		this.wrongAns = wrongAns;
	}
	
}

