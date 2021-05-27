package kr.or.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DispatcherServlet
 */
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DispatcherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 사용자가 요청한 path정보 추출
		String uri = request.getRequestURI();
		System.out.println("사용자 요청 uri : " + uri);
		
		//2.path를 처리할 컨트롤러 검색
		HandlerMapping mapping = new HandlerMapping();
		Controller controller =mapping.getController(uri);	//
		
		//3.검색된 컨트롤러를 통해서 데이터 처리
		String viewName = controller.handleRequest(request, response);
		
		//4.ViewResolver를 통해서 view페이지로 이동
		ViewResolver resolver = new ViewResolver();
		String view = resolver.getView(viewName);
		System.out.println("최종 결과 페이지 : "+ view);
		response.sendRedirect(view);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
 