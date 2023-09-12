package com.practical.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//컨트롤러 계층: @Controller, 
//서비스 계층 : @Service,
//영속성 계층(Persistence Layer): @Repository
//[주의] servlet-context.xml에 component-scan대상으로 패키지 등록해야 함
import org.springframework.stereotype.Service;
import com.practical.mapper.PracticalMapper;
import com.practical.model.PracticalVO;

@Service("practicalService")
@Repository
public class PracticalServiceImpl implements PracticalService {
	
	@Autowired
	private PracticalMapper pMapper;

	@Override
	public int insertQna(PracticalVO pvo) {
		
		return pMapper.insertQna(pvo);
	}
	
}
