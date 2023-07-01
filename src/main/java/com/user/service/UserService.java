package com.user.service;

import java.util.List;
import com.user.model.NotUserException;
import com.user.model.UserVO;

public interface UserService {
	
	int createUser(UserVO user);

	boolean idCheck(String userid);

	int deleteUser(Integer midx);

	UserVO getUser(Integer midx);

	UserVO findUser(UserVO findUser) throws NotUserException;

	UserVO loginCheck(String userid, String pwd) throws NotUserException;

	String updatePwd(String prevPwd, UserVO user) throws NotUserException;
	
	String updateEmail(UserVO user);

}
