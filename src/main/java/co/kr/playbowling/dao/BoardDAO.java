package co.kr.playbowling.dao;

import java.util.List;

import co.kr.playbowling.vo.BoardVO;

public interface BoardDAO {	
	//게시판 쓰기
	public void write(BoardVO vo) throws Exception;
	
	//게시판 읽기
	public BoardVO read(int bnum) throws Exception;
	
	//게시판글 수정
	public void update (BoardVO vo) throws Exception;
	
	//게시판 글 삭제
	public void delete(int bnum) throws Exception;
	
	//글 목록 조회
	public List<BoardVO> listAll() throws Exception;
	
	//조회수증가
	void updateReadCount(int bnum) throws Exception;
	
	//총 게시물 갯수 증가
	public int boardCount() throws Exception;
	
	// 페이징처리
	public List listPage(int displayPost, int postNum)throws Exception;

}
