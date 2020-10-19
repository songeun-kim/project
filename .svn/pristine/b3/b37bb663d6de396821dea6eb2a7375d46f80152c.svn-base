package co.kr.playbowling.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import co.kr.playbowling.dao.MypageDAO;
import co.kr.playbowling.vo.MypageVO;

@Service
public class MypageServiceImpl implements MypageService {

	@Inject
	private MypageDAO dao;
	
	//내 정보 조회
	@Override
	public void mypage(MypageVO vo) throws Exception {
		
	}

	//내 정보 수정
	@Override
	public void mypageUpdate(MypageVO vo) throws Exception {
		
		dao.mypageUpdate(vo);

	}

	//회원탈퇴
	@Override
	public void memberDelete(MypageVO vo) throws Exception {
		
		dao.memberDelete(vo);
			
	}

	@Override
	public void mypage(String mem_id) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
