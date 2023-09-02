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
	
	// no에 해당하는 배열 2개 (하지만 String) 가져오기
	WrongVO selectWrongData(String userId);

	int saveWrong(WrongVO wrong);
	
}
