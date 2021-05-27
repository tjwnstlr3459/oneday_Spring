package kr.or.tv.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import kr.or.member.TestData;

/**
 * Servlet implementation class BeanTest1Servlet
 */
public class BeanTest1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BeanTest1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AbstractApplicationContext cntx = new GenericXmlApplicationContext("testContext.xml");
		TestData data = cntx.getBean("data",TestData.class);
		System.out.println(data.getData()); //100
		data.setData(data.getData()+1);
		System.out.println(data.getData());	//101
		
		
		//다시 새로 data를 집어넣으면 객체를 재사용 하는지, 다시 새로 만드는지 확인해보자
		TestData data1 = cntx.getBean("data",TestData.class);
		System.out.println(data1.getData());
		//bean file의 내용 불러오면 기존객체를 재사용 하여 (101이 출력)
		//bean file에 scope="prototype"을 명시한다면 새로 객체를 만들어 (100이 출력)
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
