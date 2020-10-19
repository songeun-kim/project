package co.kr.playbowling.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import co.kr.playbowling.dao.MemberDAO;
import co.kr.playbowling.vo.MemberVO;

@Service
public class MemberServicelmpl implements MemberService{

	@Inject MemberDAO dao;
	
	//회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}

	//로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		/*
		 * System.out.println("-----------------------Service-----------------");
		 * System.out.println(vo);
		 */
		
		return dao.login(vo);
	}


}