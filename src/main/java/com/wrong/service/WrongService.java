package com.wrong.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wrong.model.WrongVO;

@Service
public interface WrongService {

	int insertWrongData(WrongVO wrong);

	WrongVO selectWrongData();

}
