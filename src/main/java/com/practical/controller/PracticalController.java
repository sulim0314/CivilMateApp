package com.practical.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
	
	@GetMapping("/randomQna")
	public String randomQna(Model m, HttpSession session) throws JsonProcessingException {
		
		UserVO uvo = (UserVO)session.getAttribute("loginUser");
		String userId = uvo.getUserid();
		
		List<PracticalVO> qnaList = pService.getQnaById(userId);
		
		ObjectMapper objectMapper = new ObjectMapper();
		String qnaJson = objectMapper.writeValueAsString(qnaList);
		
		m.addAttribute("qna", qnaList);
		
		// 랜덤 배열 만들기
		int num = qnaList.size();
		
		if(num > 0) {
			int[] order = new int[200];
	        Random rand = new Random();

	        for (int i = 0; i < order.length; i++) {
	            // nextInt(num)은 0부터 (num-1)까지의 랜덤한 수를 반환
	        	order[i] = rand.nextInt(num); // 4문제면 0부터 3까지 들어감.
	        }

	        m.addAttribute("order", order); // 배열 보내기
		} else {
	        // QnA 리스트가 비어 있는 경우
	        m.addAttribute("noQna", true);
	    }
		
		return "practical/randomQna";
	}
	
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
		} else {
			pvo.setQfile("");
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
		} else {
			pvo.setAfile("");
		}
		
		pService.insertQna(pvo);

		return "redirect:/practical/qnaRegister";
	}
}
