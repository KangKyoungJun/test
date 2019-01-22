package com.mvc.mybatis.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface MemberService {
//중복확인
	public void confirmId(HttpServletRequest req, Model model);
//회원가입 처리
	public void inputPro(HttpServletRequest req, Model model);
//로그인
	public void loginPro(HttpServletRequest req, Model model);
//회원정보 처리
	public void modifiyview(HttpServletRequest req, Model model);
//회원정보 수정
	public void modifyPro(HttpServletRequest req, Model model);
//회원정보 삭제처리 
	public void deletePro(HttpServletRequest req, Model model);
}