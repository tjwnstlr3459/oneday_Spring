package kr.or.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

/**
 * Servlet implementation class BeanTest2Servlet
 */
public class BeanTest2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BeanTest2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//applicationContext는 두가지의 xml을 import한 파일
		AbstractApplicationContext cntx = new GenericXmlApplicationContext("applicationContext.xml");
		Member m = cntx.getBean("m1",Member.class);
		TestData data = cntx.getBean("data",TestData.class);
		System.out.println(m.getName());
		System.out.println(data.getData());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
