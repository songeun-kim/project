package co.kr.playbowling.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.playbowling.service.ReplyService;
import co.kr.playbowling.vo.BoardVO;
import co.kr.playbowling.vo.ReplyVO;
	
@Controller
@RequestMapping("/reply/*")
public class ReplyController {

	@Inject
	private ReplyService service;

	@RequestMapping("/modify")
	@ResponseBody
	private void modify(@RequestParam int bnum, @RequestParam String content) throws Exception {
System.out.println("1");
		ReplyVO vo = new ReplyVO();
		System.out.println("2");
		vo.setBnum(bnum);
		System.out.println("3");
		vo.setContent(content);
		System.out.println("4");
		// 로그인 기능을 구현했거나 따로 댓글 작성자를 입력받는 폼이 있다면 입력 받아온 값으로 사용하면 됩니다. 저는 따로 폼을 구현하지
		// 않았기때문에 임시로 "test"라는 값을 입력해놨습니다.
		vo.setWriter("test");
		System.out.println("5");
		return;
	}


	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPost(ReplyVO reply, RedirectAttributes rttr) throws Exception {
		System.out.println("6");
		service.modify(reply);
		System.out.println("7");
		return "redirect";
	}

	// 댓글 조회
	// 댓글 작성

	// 댓글 수정
	// 댓글 삭제

}
	