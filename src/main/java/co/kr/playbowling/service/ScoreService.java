package co.kr.playbowling.service;

import java.util.List;

import co.kr.playbowling.vo.ScoreVO;

public interface ScoreService {
	
	public List<ScoreVO> list(String mem_id) throws Exception;
	
	//내 점수 조회
	public ScoreVO read (int seq) throws Exception;
		
	//내 점수 추가
	public void scoreInsert(ScoreVO vo) throws Exception; 
		
	//내 점수 수정
	public void scoreUpdate(ScoreVO vo) throws Exception;

}
