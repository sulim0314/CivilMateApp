package com.wrong.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//컨트롤러 계층: @Controller, 
//서비스 계층 : @Service,
//영속성 계층(Persistence Layer): @Repository
//[주의] servlet-context.xml에 component-scan대상으로 패키지 등록해야 함
import org.springframework.stereotype.Service;

import com.wrong.mapper.WrongMapper;
import com.wrong.model.WrongVO;

@Service("wrongService")
@Repository
public class WrongServiceImpl implements WrongService {
	
	@Autowired
	private WrongMapper wrongMapper;

	@Override
	public int insertWrongData(WrongVO wrong) {

		wrong.setWrongNum(wrong.getWrongNum());
		wrong.setWrongAns(wrong.getWrongAns());
		
		return this.wrongMapper.insertWrongData(wrong);
	}

	@Override
	public WrongVO selectWrongData() {
		return this.wrongMapper.selectWrongData();
	}
	

	
}
