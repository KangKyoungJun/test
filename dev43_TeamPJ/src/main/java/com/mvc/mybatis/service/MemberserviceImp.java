package com.mvc.mybatis.service;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.mvc.mybatis.persistence.MemberDAO;
import com.mvc.mybatis.vo.MemberVO;

@Service
public class MemberserviceImp implements MemberService{
	@Autowired	//@Inject도 같이 의미로 쓸 수 있다.
	MemberDAO dao;
	//중복확인 처리
	@Override
	public void confirmId(HttpServletRequest req, Model model) {
	//3단계 : 화면에서 입력받은 값을 받아온다.
	String strId = req.getParameter("id");
	//4단계 : 다형성을 적용, 싱글톤방식으로 DAO 객체 생성
	//MemberDAO dao = MemberDAOImp.getInstance();
	//5단계 : 중복된 ID가 있는지 확인
	int Cnt = dao.idCheck(strId);		
	//6단계 : request나 session에 처리 결과를 저장(jsp에 전달하기 위함)
	model.addAttribute("selectCnt", Cnt);
	model.addAttribute("id", strId);
	}
	
	//회원정보 처리
	@Override
	public void inputPro(HttpServletRequest req, Model model) {
	//3단계 : 화면에서 입력받은 값을 받아온다.
	//vo라는 바구니부터 생성 
	MemberVO vo = new MemberVO();
	vo.setId(req.getParameter("id"));
	vo.setPwd(req.getParameter("pwd"));
	vo.setName(req.getParameter("name"));
	vo.setJumin1(req.getParameter("jumin1"));
	vo.setJumin2(req.getParameter("jumin2"));
	//hp 3개 나눈걸 합침
	String hp = "";
	String hp1 = req.getParameter("hp1");
	String hp2 = req.getParameter("hp2");
	String hp3 = req.getParameter("hp3");
	if(!hp1.equals("") && !hp2.equals("") && !hp3.equals("")) {
		hp = hp1+"-"+hp2+"-"+hp3;
	}
	vo.setHp(hp);
	//email 2개 나눈걸 합침
	String email ="";
	String email1 = req.getParameter("email1");
	String email2 = req.getParameter("email2");
	if(!email1.equals("") && !email2.equals("")) {
		email = email1 + "@" + email2;
	}
	vo.setEmail(email);
	
	vo.setReg_date(new Timestamp(System.currentTimeMillis()));
	
	//4단계 : 다형성을 적용, 싱글톤방식으로 DAO 객체 생성
	//MemberDAO dao = MemberDAOImp.getInstance();
	//5단계 : 중복된 ID가 있는지 확인
	int cnt = dao.insertMember(vo);	
	//6단계 : request나 session에 처리 결과를 저장(jsp에 전달하기 위함)
	model.addAttribute("insertCnt", cnt);
	}
	
	//로그인정보 처리
	@Override
	public void loginPro(HttpServletRequest req, Model model) {
	//3단계 : 화면에서 입력받은 값을 받아온다.
		String strId = req.getParameter("id");
		String strPwd = req.getParameter("pwd");
	//4단계 : 다형성을 적용, 싱글톤방식으로 DAO 객체 생성
	//MemberDAO dao = MemberDAOImp.getInstance();
	//5단계 : 중복된 ID가 있는지 확인
	//Map<String datatype> map = new HashMap<Key datetype, value datatype>
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("strId", strId);
		map.put("strPwd", strPwd);
		int selectCnt = dao.idpwdCheck(map);
		
		if(selectCnt ==1) {
			//memId 대소문자 구분
			//session에 id를 설정
			req.getSession().setAttribute("memId", strId);
		}
	//6단계 : request나 session에 처리 결과를 저장(jsp에 전달하기 위함)
			model.addAttribute("cnt",selectCnt);
		}
	//정보수정 처리
	@Override
	public void modifiyview(HttpServletRequest req, Model model) {
		//3단계 : 화면에서 입력받은 값을 받아온다.
		String strId = (String)req.getSession().getAttribute("memId");
		String strPwd = req.getParameter("pwd");
		//4단계 : 다형성을 적용, 싱글톤방식으로 DAO 객체 생성
		//MemberDAO dao = MemberDAOImp.getInstance();
		//5-1단계 : 중복된 ID가 있는지 확인
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("strId", strId);
		map.put("strPwd", strPwd);
		int selectCnt = dao.idpwdCheck(map);
		//5-2단계 : 있으면 로그인한 id로 정보조회
		if(selectCnt==1) {
			MemberVO vo = dao.getMemberInfo(strId);
			model.addAttribute("vo", vo);
		}
		//6단계 : request나 session에 처리 결과를 저장(jsp에 전달하기 위함)
		model.addAttribute("selectCnt", selectCnt);
	}
	//불러온 정보수정 처리
	@Override
	public void modifyPro(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("memId");
		MemberVO vo = new MemberVO();
		
		vo.setId(strId);
		vo.setPwd(req.getParameter("pwd"));
		//hp 3개 나눈걸 합침
		String hp = "";
		String hp1 = req.getParameter("hp1");
		String hp2 = req.getParameter("hp2");
		String hp3 = req.getParameter("hp3");
		if(!hp1.equals("") && !hp2.equals("") && !hp3.equals("")) {
			hp = hp1+"-"+hp2+"-"+hp3;
		}
		vo.setHp(hp);
		//email 2개 나눈걸 합침
		String email ="";
		String email1 = req.getParameter("email1");
		String email2 = req.getParameter("email2");
		if(!email1.equals("") && !email2.equals("")) {
			email = email1 + "@" + email2;
		}
		vo.setEmail(email);
		
		System.out.println("email : "+email);
		System.out.println("hp : "+hp);
		System.out.println("pwd : "+req.getParameter("pwd"));
		//4단계 : 다형성을 적용, 싱글톤방식으로 DAO 객체 생성
		//MemberDAO dao = MemberDAOImp.getInstance();
		//5단계 : 중복된 ID가 있는지 확인
		int Cnt = dao.updateMem(vo);
		
		//6단계 : request나 session에 처리 결과를 저장(jsp에 전달하기 위함)
		model.addAttribute("updateCnt", Cnt);
		}
	//탈퇴 - 패스워드
	@Override
	public void deletePro(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("memId");
		String strPwd = req.getParameter("pwd");
		//4단계 : 다형성을 적용, 싱글톤방식으로 DAO 객체 생성
		//MemberDAO dao = MemberDAOImp.getInstance();
		//5단계 : 중복된 ID가 있는지 확인
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("strId", strId);
			map.put("strPwd", strPwd);
			int selectCnt = dao.idpwdCheck(map);
			int deleteCnt = 0;
		//5-2단계
			if(selectCnt==1) {
				deleteCnt = dao.deleteMem(strId);
			}
		//6단계 : request나 session에 처리 결과를 저장(jsp에 전달하기 위함)
			model.addAttribute("deleteCnt",deleteCnt);
			model.addAttribute("selectCnt",selectCnt);
			}
}
