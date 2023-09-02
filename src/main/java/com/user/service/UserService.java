package com.user.service;

import java.util.List;
import com.user.model.NotUserException;
import com.user.model.UserVO;

public interface UserService {
	
	int createUser(UserVO user);

	boolean idCheck(String userid);

	UserVO getUser(Integer midx); //?

	UserVO findUser(UserVO findUser) throws NotUserException;

	UserVO loginCheck(String userid, String pwd) throws NotUserException;

	String updatePwd(String prevPwd, UserVO user) throws NotUserException;

	String updateEmail(UserVO user) throws NotUserException;

	int deleteMember(int idx);

	String getIdByEmail(String searchEmail);

	UserVO getUserByEmail(String searchEmail);

	void sendEmail(UserVO user, String searchEmail);

}
