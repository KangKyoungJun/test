package com.mvc.mybatis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.mybatis.service.MemberserviceImp;

@Controller
public class MemberControler {

	@Autowired
	MemberserviceImp service;

	// 메인 화면
	@RequestMapping("main")
	public String main(Model model) {
		System.out.println("main");

		return "main";
	}

	// 소개
	@RequestMapping("Info")
	public String Info(Model model) {
		System.out.println("Info");

		return "Info";
	}

	// 소개
	@RequestMapping("Introduce")
	public String Introduce(Model model) {
		System.out.println("Introduce");

		return "Introduce";
	}

	// 정보
	@RequestMapping("function")
	public String function(Model model) {
		System.out.println("function");

		return "function";
	}

	// 로그인,회원가입
	@RequestMapping("loginForm")
	public String loginForm(Model model) {
		System.out.println("loginForm");

		return "loginForm";
	}

	// 게시판
	@RequestMapping("Board")
	public String Board(Model model) {
		System.out.println("Board");

		return "Board";
	}

	// 게시판
	@RequestMapping("Board1")
	public String Board1(Model model) {
		System.out.println("Board1");

		return "Board1";
	}

	// 게시판
	@RequestMapping("Board2")
	public String Board2(Model model) {
		System.out.println("Board2");

		return "Board2";
	}

	// 게시판
	@RequestMapping("Board3")
	public String Board3(Model model) {
		System.out.println("Board3");

		return "Board3";
	}

	// 게시판
	@RequestMapping("Board4")
	public String Board4(Model model) {
		System.out.println("Board4");

		return "Board4";
	}

	// 게시판
	@RequestMapping("Board5")
	public String Board5(Model model) {
		System.out.println("Board5");

		return "Board5";
	}

	// 지수 목록 보기
	@RequestMapping("Health_Index")
	public String Health_Index(Model model) {
		System.out.println("Health_Index");

		return "Health_Index";
	}
}