package kr.or.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class BeforeAdvice {
	//포인트컷 만들기
	@Pointcut("execution(* kr.or.member.model.service..*Service.*(*,..))")
	public void allPointcut() {}
	
	@Before("allPointcut()")
	public void beforeLog(JoinPoint jp) {
		String methodName = jp.getSignature().getName(); //호출된 비지니스 메소드이름 가져옴
		Object[] args = jp.getArgs(); //타입이 다양할수 있어서 Object타입으로 받음
		System.out.println("[사전처리]"+methodName+" / 매개변수 정보: "+args[0].toString());
		//args[0]을 출력하려하면 서비스-전체출력에서 에러가난다(매개변수의 값이 없기때문에)
		//1.해결방법 : args[].size()로 조건문으로 걸러준다
		//2.해결방법 : execution(* kr.or.member.model.service..*Service.*(*,..)) 한개무조건 있어야하는 조건
				// execution으로 걸러주기때문에 에러는 안나고, 적용을 안하게함
	}
	
	
}
