package co.kr.playbowling.service;

import co.kr.playbowling.vo.MypageVO;

public interface MypageService {

	//내 정보 조회
	public void mypage(String mem_id) throws Exception;
	
	//내 정보 수정
	public void mypageUpdate(MypageVO vo) throws Exception;
	
	//회원탈퇴
	public void memberDelete(MypageVO vo) throws Exception;

	void mypage(MypageVO vo) throws Exception;

}
