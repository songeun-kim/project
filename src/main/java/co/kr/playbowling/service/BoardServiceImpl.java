package co.kr.playbowling.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import co.kr.playbowling.dao.BoardDAO;
import co.kr.playbowling.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDAO dao;
	
	// 게시글 쓰기
	@Override
	public void write(BoardVO board) throws Exception {
		dao.write(board);
	}
	
	//게시글 조회
	@Override
	public BoardVO read(int bnum) throws Exception {
		dao.updateReadCount(bnum);
		return dao.read(bnum);		
	}

	//게시글 수정
	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);
	}

	//게시글 삭제
	@Override
	public void remove(int bnum) throws Exception {
		dao.delete(bnum);
	}

	//게시글 목록
	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
		
	}

	//총 게시물 갯수 증가
	@Override
	public int boardCount() throws Exception {
		return dao.boardCount();
	}

	//페이징처리
	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		return dao.listPage(displayPost, postNum);
	}


}
