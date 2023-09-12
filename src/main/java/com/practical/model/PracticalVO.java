package com.practical.model;

import lombok.Data;

@Data
public class PracticalVO {
	
	private int qno;
	private String userid;
	private String question;
	private String qfile; // 물리적 파일명 uuid_파일명
	private String answer;
	private String afile;
	
}

