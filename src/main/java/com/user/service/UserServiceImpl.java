package com.user.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.user.mapper.UserMapper;
import com.user.model.NotUserException;
import com.user.model.UserVO;
//서비스계층에는 @Service
@Service("userService") //resource name
public class UserServiceImpl implements UserService {
	
	@Inject
	private BCryptPasswordEncoder passwordEncoder;
	
	@Inject
	private UserMapper userMapper;

	@Override
	public int createUser(UserVO user) {
		
		user.setPwd(passwordEncoder.encode(user.getPwd())); //비밀번호 암호화 처리
		return userMapper.createUser(user);
	}

	@Override
	public boolean idCheck(String userid) {
		Integer idx=userMapper.idCheck(userid);
		System.out.println("idx: "+idx);
		if(idx==null) return true;		
		return false;
	}

	@Override
	public UserVO getUser(Integer midx) {
		return null;
	}

	@Override
	public UserVO findUser(UserVO findUser) throws NotUserException {
		UserVO user=userMapper.findUser(findUser);
		return user;
	}

	@Override
	public UserVO loginCheck(String userid, String pwd) throws NotUserException {
		
		UserVO tmpUser=new UserVO();
		
		tmpUser.setUserid(userid);
		tmpUser.setPwd(pwd);
		
		UserVO dbuser=this.findUser(tmpUser);
		
		if(dbuser == null) {
			throw new NotUserException("존재하지 않는 아이디입니다");
		}
		
		boolean isMatch = passwordEncoder.matches(pwd, dbuser.getPwd());
		
		if(!isMatch) {
			throw new NotUserException("비밀번호가 일치하지 않아요");
		}
		
		return dbuser;
	}

	@Override
	public String updatePwd(String prevPwd, UserVO user) throws NotUserException {
		
		UserVO tmpUser= new UserVO();
		
		tmpUser.setUserid(user.getUserid());
		tmpUser.setPwd(prevPwd);
		
		UserVO dbuser = this.findUser(tmpUser);
		
		boolean isMatch = passwordEncoder.matches(prevPwd, dbuser.getPwd()); // 현재 비밀번호와, DB에 있는 비밀번호 일치하는지 확인.
		
		if(!isMatch) {
			throw new NotUserException("비밀번호가 일치하지 않아요");
		} else {
			user.setPwd(passwordEncoder.encode(user.getPwd())); //새 비밀번호 암호화 처리
		}
		
		return userMapper.updatePwd(user);
	}

	@Override
	public String updateEmail(UserVO user) throws NotUserException {

		return userMapper.updateEmail(user);
	}

	@Override
	public int deleteMember(int idx) {

		return userMapper.deleteMember(idx);
	}


}
