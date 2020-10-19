package co.kr.playbowling.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.playbowling.service.MemberService;
import co.kr.playbowling.vo.MemberVO;


@Controller
@RequestMapping("/member/*")
public class MemberController {
	//로그확인
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	// 회원가입  화면
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		
		logger.info("get register");
		
	}
	
	//회원가입
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postmemberRegister(MemberVO vo) throws Exception{
		
		logger.info("Post register");
		
		service.register(vo);
		
		return "redirect:/";
		
	}
	
	//로그인 화면
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void getLogin() throws Exception{
		logger.info("get login");
	}
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("Post MemberLogin");
		
		// 세션을 가져옴 (없으면 생성)
		HttpSession session = req.getSession(true);
		MemberVO member = service.login(vo);
		
		if(member != null) {
			//"USER"로 vo를 세션에 바인딩
			session.setAttribute("USER", member);
				
		} 
		 else {
			session.setAttribute("USER", null);
			
		}
		return "/member/loginsuccess";
		
	}
	
	//로그아웃
	@RequestMapping(value ="/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		logger.info("get Logout");
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	//로그인 성공 화면
	@RequestMapping("/loginsuccess")
	public String loginsuccess() {
		return "/member/loginsuccess";
	}
}