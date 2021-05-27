package kr.or.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.member.model.service.MemberService;
import kr.or.member.model.vo.Member;

@Controller
public class MemberController {
	//자주쓸거라 전역변수 선언
	@Autowired
	private MemberService service;

   public MemberController() {
      super();
      System.out.println("MemberController 생성완료");
   }
   
   @RequestMapping(value="/login.do")
   		//1.값추출
   public String login(Member m,HttpSession session,Model model) {
	   //2.로직처리
	   Member member = service.selectOneMember(m);
	   if(member!= null) {
		   session.setAttribute("m", member);
		   model.addAttribute("msg","로그인 성공");
	   }else {
		   model.addAttribute("msg","아이디 또는 비밀번호를 확인해주세ㅛㅇ");
	   }
	   model.addAttribute("loc","/");
	   return "common/msg";
   }
 
   @RequestMapping(value="/joinFrm.do")
   public String joinFrm() {
	   //이렇게만 적어도 저절로 경로 설정되서 이동
	   return "member/joinFrm";
   }
   
   @RequestMapping(value="/join.do")
   public String join(Member m,Model model) {
	   int result = service.insertMember(m);
	   if(result >0) {
		   model.addAttribute("msg","회원가입 성공");
	   }else {
		   model.addAttribute("msg","회원가입 실패");
	   }
	   model.addAttribute("loc","/");
	   return "common/msg";
   }
   @RequestMapping(value="/logout.do")
   public String logout(Member m,Model model,HttpSession session) {
	   if(session !=null) {
		   session.invalidate();
		   model.addAttribute("msg","로그아웃하셨습니다");
	   }
	   model.addAttribute("loc","/");
	   return "common/msg";
   }
}






