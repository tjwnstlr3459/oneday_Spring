package kr.or.member.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginMember implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		//1.인코딩
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//2.값추출
		String memberId = request.getParameter("memberId");
		String memberPw = request.getParameter("memberPw");
		
		//3.비지니스로직
		if(memberId.equals("user01") && memberPw.equals("1234")) {
			return "loginSuccess";
		}else {
			return "loginFailed";
		}
	}

}
