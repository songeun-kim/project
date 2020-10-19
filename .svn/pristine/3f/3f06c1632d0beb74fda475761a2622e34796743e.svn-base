package co.kr.playbowling.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import co.kr.playbowling.service.MypageService;
import co.kr.playbowling.vo.MypageVO;


@Controller
@RequestMapping("/mypage/*")
public class MypageController {

	@Inject
	private MypageService service;
	
	//로그확인
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	//내 정보 조회
	
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public void getMypage(@ModelAttribute MypageVO vo, HttpSession httpSession, String mem_id) throws Exception {
		
		logger.info("get MypageInfo");
	}
	
	//내 정보 수정
	@RequestMapping(value="/mypage_revice", method=RequestMethod.GET)
	public void getmypageUpdate() throws Exception {
				
		logger.info("get Mypage revice");
				
	}
	
	//내 정보 수정
	@RequestMapping(value="/mypage_Update", method=RequestMethod.POST)
	public String postmypageUpdate(MypageVO vo, HttpSession httpSession) throws Exception {
		logger.info("post Mypage Update");
		
		service.mypageUpdate(vo);
		
		httpSession.invalidate();
				
		return "redirect:/";
	}
	
	//탈퇴하기 get
	@RequestMapping(value="/memberDelete", method=RequestMethod.GET)
	public void getMemberDelete() throws Exception {
		
		logger.info("get Member Delete");
		
	}
	
	
	//탈퇴하기
	@RequestMapping(value="/memberDelete", method=RequestMethod.POST)
	public String memberDelete(MypageVO vo, HttpSession httpSession ) throws Exception {
		
		logger.info("post memberDelete!!");
				
		//탈퇴
		service.memberDelete(vo);
		
		//로그인 세션 삭제
		httpSession.removeAttribute("USER");
		httpSession.invalidate();
		
		return "/mypage/final";
	}
	
	@RequestMapping(value="/deleteSuccess", method=RequestMethod.GET)
	public String memberDeleteSuccess() {
		return "/";
	}
}
