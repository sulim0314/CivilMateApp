package com.wrong.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wrong.model.WrongVO;

@Service
public interface WrongService {

	int insertWrongData(WrongVO wrong);

	WrongVO selectWrongData(String userId);

	// saveWrong 테이블에 저장한 것 넣기
	int saveWrong(WrongVO wrong);

	List<WrongVO> getSavedWrongByUserId(String userId);

}
