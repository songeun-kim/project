package co.kr.playbowling.dao;

import java.util.List;

import co.kr.playbowling.vo.ScoreVO;

public interface ScoreDAO {
	
	//내 점수 조회
	public List<ScoreVO> list() throws Exception;
	
	//내 점수 추가
	public void scoreInsert(ScoreVO vo) throws Exception;
	
	//내 점수 수정
	public void scoreUpdate(ScoreVO vo) throws Exception;
}
