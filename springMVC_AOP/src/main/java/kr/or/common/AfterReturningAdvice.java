package kr.or.common;

import org.aspectj.lang.JoinPoint;

import kr.or.member.model.vo.Member;

public class AfterReturningAdvice {
	public void afterLog(JoinPoint jp, Object returnObj) {
		String methodName = jp.getSignature().getName();
//		System.out.println("[사후처리] :"+methodName+"처리완료");
		
		if(returnObj instanceof Member) {// returnObj의 데이터타입이 Member인 경운 true
			Member m = (Member)returnObj;
			System.out.println("[사후처리] "+methodName+" / 이름 : "+m.getMemberName());
		}
	}
}
