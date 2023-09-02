package com.user.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.mail.MailAuthenticationException;
import org.springframework.mail.MailException;
import org.springframework.mail.MailParseException;
import org.springframework.mail.MailSendException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
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

	@Inject
	private JavaMailSender mailSender;
	
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

	@Override
	public String getIdByEmail(String searchEmail) {
		return userMapper.getIdByEmail(searchEmail);
	}

	@Override
	public void sendEmail(UserVO user, String email) {

		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

        String tmpPwd = "";

        // 문자 배열 길이의 값을 랜덤으로 10개를 뽑아 구문을 작성함
        int idx = 0;
        for (int i = 0; i < 10; i++) {
            idx = (int) (charSet.length * Math.random());
            tmpPwd += charSet[idx];
        }
		
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(email);
            message.setFrom("civilengineeringmate");
            message.setSubject("[토목기사 메이트] 임시 비밀번호 안내 이메일입니다.");
            message.setText("안녕하세요.\n"
            		+ "[토목기사 메이트] 임시비밀번호 안내 관련 이메일 입니다.\n"
            		+ "임시 비밀번호를 발급하오니 사이트에 접속하셔서 로그인 하신 후\n"
            		+ "반드시 비밀번호를 변경해주시기 바랍니다.\n\n"
            		+ "임시 비밀번호 : " + tmpPwd);
            mailSender.send(message);
        } catch (MailParseException e) {
            e.printStackTrace();
        } catch (MailAuthenticationException e) {
            e.printStackTrace();
        } catch (MailSendException e) {
            e.printStackTrace();
        } catch (MailException e) {
            e.printStackTrace();
        }
		
        // 비번 바꾸기
        user.setPwd(passwordEncoder.encode(tmpPwd)); //새 비밀번호 암호화 처리
        userMapper.updatePwd(user);
        
	}

	@Override
	public UserVO getUserByEmail(String searchEmail) {
		return userMapper.getUserByEmail(searchEmail);
	}

}
