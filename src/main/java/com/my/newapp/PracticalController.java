package com.my.newapp;

import java.io.File;

import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.practical.model.PracticalVO;
import com.practical.service.PracticalService;
import com.user.model.UserVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/practical")
@Log4j
public class PracticalController {

	@Autowired
	@Resource(name = "practicalService")
	private PracticalService pService;
	
	@GetMapping("/qnaRegister")
	public String qnaRegister() {
		return "practical/qnaRegister";
	}
	
	@PostMapping("/insertQna")
	public String insertQna(
			@RequestParam(value = "qfile", required = false) MultipartFile qf, 
			@RequestParam("question") String que,
			@RequestParam(value = "afile", required = false) MultipartFile af,
			@RequestParam("answer") String ans, HttpSession session) {
		System.out.println("안들어오나용");
		UserVO uvo = (UserVO)session.getAttribute("loginUser");
		
		PracticalVO pvo = new PracticalVO();
		
		pvo.setUserid(uvo.getUserid());
		pvo.setQuestion(que);
		pvo.setAnswer(ans);
		
		// 1. 파일 업로드 처리 - [1] 업로드 디렉토리 절대경로 얻기(resources/board_upload)
		ServletContext app = session.getServletContext();
		String upDir = app.getRealPath("/resources/qna_upload");
		File dir = new File(upDir);

		if (!dir.exists()) {
			dir.mkdirs();// 업로드 디렉토리 생성
		}

		if (!qf.isEmpty()) {// 첨부파일이 있다면
			String qname = qf.getOriginalFilename();// 원본파일명
			//long fsize = qf.getSize();// 파일크기
			UUID uid = UUID.randomUUID();
			String qfile = uid.toString() + "_" + qname;
			pvo.setQfile(qfile);
			// [3] 업로드 처리
			try {
				qf.transferTo(new File(upDir, qfile));
			} catch (IOException e) {
				log.error("파일업로드 에러: " + e);
			}
		}
		
		if (!af.isEmpty()) {// 첨부파일이 있다면
			String aname = af.getOriginalFilename();// 원본파일명
			//long fsize = af.getSize();// 파일크기
			UUID uid = UUID.randomUUID();
			String afile = uid.toString() + "_" + aname;
			pvo.setAfile(afile);
			// [3] 업로드 처리
			try {
				af.transferTo(new File(upDir, afile));
			} catch (IOException e) {
				log.error("파일업로드 에러: " + e);
			}
		}
		
		pService.insertQna(pvo);

		return "redirect:/practical/qnaRegister";
	}
}
