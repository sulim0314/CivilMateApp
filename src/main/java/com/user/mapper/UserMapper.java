package com.user.mapper;

import com.user.model.UserVO;
//UserMapper를 implements 하는 클래스를 스프링이 자동으로 구현하여 메모리에 올린다
//=>Proxy객체를 스프링이 만듦 ==> datasource-context.xml에 mybatis-spring:scan설정을 해야 함
public interface UserMapper {
	
	int createUser(UserVO user);
	UserVO getUser(int idx);
	
	Integer idCheck(String userid);
	UserVO findUser(UserVO user);
	
	String updatePwd(UserVO user);
	String updateEmail(UserVO user);
	
	int deleteMember(int idx);
	
	String getIdByEmail(String searchEmail);
	UserVO getUserByEmail(String searchEmail);

}
