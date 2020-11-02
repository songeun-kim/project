package co.kr.playbowling.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import co.kr.playbowling.vo.ScoreVO;

@Repository
public class ScoreDAOImpl implements ScoreDAO {

	@Inject
	SqlSession sql;
	
	private static String namespace = "mappers.scoreMapper";
	
	//내 점수 조회
	@Override
	public ScoreVO read(int seq) throws Exception {
		
		return sql.selectOne(namespace + ".read", seq);
	}
	
	//점수 추가
	@Override
	public void scoreInsert(ScoreVO vo) throws Exception {
		
		sql.insert(namespace + ".insert", vo);
	}
	
	//내 점수 수정
	@Override
	public void scoreUpdate(ScoreVO vo) throws Exception {
		sql.update(namespace + ".update",vo);

	}

	//점수 목록
	@Override
	public List<ScoreVO> list(String mem_id) throws Exception {
		return sql.selectList(namespace + ".list", mem_id);
	}



}
