package com.wrong.service;

import org.springframework.stereotype.Service;

import com.wrong.model.WrongVO;

@Service
public interface WrongService {

	int saveWrongData(WrongVO wrong);

}
