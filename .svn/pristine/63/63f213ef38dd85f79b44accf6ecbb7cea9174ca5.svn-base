package co.kr.playbowling.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import co.kr.playbowling.service.ScoreService;
import co.kr.playbowling.vo.ScoreVO;

@Controller
@RequestMapping("/personal_score/*")
public class ScoreController {

	@Inject
	private ScoreService service;
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) {   
	  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");     
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }
	
	//로그확인
	private static final Logger logger = LoggerFactory.getLogger(ScoreController.class);
		
	//점수 조회 get
	@RequestMapping(value="/score_select", method=RequestMethod.GET)
	public String getScoreView(@ModelAttribute ScoreVO vo, Model model ) throws Exception {
		
		logger.info("get ScoreView");
		String mem_id = vo.getMem_id();
		model.addAttribute("list", service.list(mem_id));
						
		return "/personal_score/score_select";
	}
	
	//점수 추가 get
	@RequestMapping(value="/score_insert", method=RequestMethod.GET)
	public void getScoreInsert() throws Exception {
		logger.info("get Score InsertView!");
	}
	
	//점수 추가 post
	@RequestMapping(value="/score_insert", method=RequestMethod.POST)
	public String postScoreInsert(ScoreVO vo) throws Exception {
		
		logger.info("post Score Insert");
		
		service.scoreInsert(vo);
		
		return "redirect:/personal_score/score_select";
		
	}
	
	//점수 수정 get
	@RequestMapping(value="/score_update", method=RequestMethod.GET)
	public String getScoreUpdate(ScoreVO vo, Model model) throws Exception {
		
		logger.info("get Score UpdateView");
		
		int seq = vo.getSeq();
		model.addAttribute("update", service.read(seq)); 
		 		 		
		return "personal_score/score_update";
	}
	
	//점수 수정 post
	@RequestMapping(value="/score_update", method=RequestMethod.POST)
	public String postScoreUpdate(ScoreVO vo) throws Exception {
		
		logger.info("post Score Update");
		
		service.scoreUpdate(vo);
		
		return "redirect:/personal_score/score_select";
	}
}
