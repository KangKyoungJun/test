package com.mvc.mybatis.persistence;
import java.util.Map;

import com.mvc.mybatis.vo.MemberVO;

public interface MemberDAO {
	//중복확인 체크
	public int idCheck(String strId);
	//회원가입 처리
	public int insertMember(MemberVO vo);
	//로그인 처리
	public int idpwdCheck(Map<String, Object> map);
	//회원정보 처리
	public MemberVO getMemberInfo(String strId);
	//회원정보 수정 처리
	public int updateMem(MemberVO vo);
	//회원정보 삭제
	public int deleteMem(String strId);
}
