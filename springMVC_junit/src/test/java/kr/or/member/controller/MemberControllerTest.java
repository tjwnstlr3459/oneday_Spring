package kr.or.member.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)	//스프링 테스트를 위한 어노테이션
@WebAppConfiguration					//클래스 자체에서 설정파일을 읽어오기위한 어노테이션
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"
					,"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class MemberControllerTest {
	//로그를 기록하기위한 객체 생성
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private WebApplicationContext wac;	//@ContextConfiguration에 담긴걸 객채화해서 담은것
	private MockMvc mockMvc;			//테스트 요청 및 결과를 받아서 검사하는 객체
	
	@Before								//본격적인 테스트를 준비하는 메소드
	public void setup() {
		//설정파일정보를 주며 요청 및 응답을 처리할 객체 생성
		mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
		logger.info("테스트 준비 완료!");
	}
	
	@Test
	public void insertTest() {
		logger.info("회원가입 테스트 시작");
		try {
			mockMvc.perform(post("/join.do")				//post로 join.do 컨트롤러 테스트
							.param("memberId", "user18")
							.param("memberPw", "1234")
							.param("memberName", "절대절대준식")	//회원가입에 필요한 파라미터 전달
							.param("phone", "01022221111")	
							.param("address", "서울")			
							.param("gender", "남"))
						.andDo(print())						//요청을 실행하고 결과를 출력
						.andExpect(status().isOk());		//예상결과값은 200(정상처리)
			logger.info("회원가입 테스트 성공");
		} catch (Exception e) {
			logger.error("회원가입 테스트 실패");
			//e.printStackTrace();
		}
	}
	@Test
	public void loginTest() {
		logger.info("로그인 테스트 시작");
		try {
			mockMvc.perform(post("/login.do")
							.param("memberId", "user01")
							.param("memberPw", "1234"))  
						.andDo(print())
						.andExpect(status().isOk());
			logger.info("로그인 테스트 성공");
		} catch (Exception e) {
			logger.error("로그인 테스트 실패");
			//e.printStackTrace();
		}
	}
}









