package co.kr.playbowling.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.playbowling.vo.MemberVO;



@Repository
public class MemberDAOlmpl implements MemberDAO {

	
	  @Inject SqlSession sql;
	  
	  private static String namespace = "mappers.memberMapper";
	 
	
	@Override
	public void register(MemberVO vo) throws Exception {
		 sql.insert(namespace + ".register", vo);
	}

	
	//로그인처리
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		/*
		 * System.out.println("-------------------DAO-------------------");
		 * System.out.println(vo);
		 */
		
		return sql.selectOne(namespace + ".login", vo); 
		
	}

}