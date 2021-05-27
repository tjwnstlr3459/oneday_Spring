package kr.or.tv.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import kr.or.member.Member;
import kr.or.member.MemberMgr;

/**
 * Servlet implementation class Dependency2Servlet
 */
public class Dependency2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Dependency2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//xml파일을 받기위한 코드
		AbstractApplicationContext cntx = new GenericXmlApplicationContext("memberContext.xml");
		
		//Bean = 자바 객체을 의미
		//Member.class = 클래스화 시켜서 값 전달
		Member member = cntx.getBean("m1",Member.class);
		MemberMgr mm2 = cntx.getBean("mm2",MemberMgr.class);
		
		System.out.println(member.getName());
		Member member2 = mm2.getM();
		System.out.println(member2.getName());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
