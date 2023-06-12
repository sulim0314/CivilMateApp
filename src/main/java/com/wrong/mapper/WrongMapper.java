package com.wrong.mapper;

import org.springframework.stereotype.Repository;

import com.wrong.model.WrongVO;

@Repository
public interface WrongMapper {
	
	int insertWrongData(WrongVO wrong);

}
