package kr.or.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class PasswordEnc {
	@Autowired
	private SHA256Enc enc;
	
	//MemberService에서 메소드명이 Member로 끝나면서 매개변수가 Member타입인 메소드
	@Pointcut("execution(* kr.or.member.model.service.MemberService.*Member(kr.or.member.model.vo.Member))")
	public void encPointcut() {}
}
