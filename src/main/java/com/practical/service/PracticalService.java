package com.practical.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.practical.model.PracticalVO;
import com.wrong.model.WrongVO;

@Service
public interface PracticalService {

	int insertQna(PracticalVO pvo);

	List<PracticalVO> getQnaById(String userId);

	int deleteQnaByQno(int qno);

	PracticalVO selectQnaByQno(int qno);

	int updateQna(PracticalVO pvo);


}
