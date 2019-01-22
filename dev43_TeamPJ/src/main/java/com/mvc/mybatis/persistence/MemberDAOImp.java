package com.mvc.mybatis.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.mybatis.vo.MemberVO;

@Repository
public class MemberDAOImp implements MemberDAO{
	@Autowired
	//servlet-context.xml에서 sqlSesstion 주입해야 import 가능하다
	private SqlSession sqlSession;
	
	//중복확인, 정보수정, 정보삭제
	@Override
	public int idCheck(String strId) {
		//방법 1.
		int selectCnt = sqlSession.selectOne("spring.mvc.member_mybatis.persistence.MemberDAO.idCheck",strId);
		return selectCnt;
		
		//방법 2.
		//MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		//int selectCnt = dao.idCheck(strId);
		//return selectCnt;
		 
	}
	//회원가입 처리페이지
	@Override
	public int insertMember(MemberVO vo) {
		return sqlSession.insert("spring.mvc.member_mybatis.persistence.MemberDAO.insertMember", vo);
	}
	
	//로그인 처리, 회원정보 수정시 비밀번호 인증 , 회원정보 탈퇴시 비밀번호 인증에도 사용
	@Override
	public int idpwdCheck(Map<String, Object> map) {
		return sqlSession.selectOne("spring.mvc.member_mybatis.persistence.MemberDAO.idpwdCheck",map);
		/*MemberDAO = sqlSession.getMapper(MemberDAO.class);
		int idChkCnt = dao.idCheck((String)map.get("strId");)
		if(idChkCnt ==1) {
			int pwdChkCnt = dao.idPwdCheck(map);
			if(pwdChkCnt ==1) {
				selectCnt = 1;
			}else {
				selectCnt = -1;
			}
		}
		return selectCnt;*/
	}
	//회원정보 처리
	@Override
	public MemberVO getMemberInfo(String strId) {
		return sqlSession.selectOne("spring.mvc.member_mybatis.persistence.MemberDAO.getMemberInfo", strId);
	}
	//정보수정 처리
	@Override
	public int updateMem(MemberVO vo) {
		return sqlSession.update("spring.mvc.member_mybatis.persistence.MemberDAO.updateMem", vo);
	}
	//회원삭제
	@Override
	public int deleteMem(String strId) {
		int deleteCnt = sqlSession.delete("spring.mvc.member_mybatis.persistence.MemberDAO.deleteMem",strId);
		return deleteCnt;
	}
}