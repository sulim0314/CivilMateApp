package com.wrong.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Repository;

import com.wrong.model.WrongVO;

@Repository
@ComponentScan
@Mapper
public interface WrongMapper {

	int insertWrongData(WrongVO wrong);
	
	
}
