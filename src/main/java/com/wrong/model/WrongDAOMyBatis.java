package com.wrong.model;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
//컨트롤러 계층: @Controller, 
//서비스 계층 : @Service,
//영속성 계층(Persistence Layer): @Repository
//[주의] servlet-context.xml에 component-scan대상으로 패키지 등록해야 함

@Repository
public class WrongDAOMyBatis implements WrongDAO {
	
	
}
