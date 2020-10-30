package co.kr.playbowling.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import co.kr.playbowling.dao.ScoreDAO;
import co.kr.playbowling.vo.ScoreVO;

@Service
public class ScoreServiceImpl implements ScoreService {
	
	@Inject
	private ScoreDAO dao;

	//점수 조회
	@Override
	public ScoreVO read(int seq) throws Exception {
		
		return dao.read(seq);
	}
	
	//점수 추가
	@Override
	public void scoreInsert(ScoreVO vo) throws Exception {
		dao.scoreInsert(vo);
		
	}
	
	//점수 수정
	@Override
	public void scoreUpdate(ScoreVO vo) throws Exception {
		dao.scoreUpdate(vo);

	}

	@Override
	public List<ScoreVO> list(String mem_id) throws Exception {
		
		return dao.list(mem_id);
	}

}
