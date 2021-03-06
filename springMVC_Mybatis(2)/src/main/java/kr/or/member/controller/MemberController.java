package kr.or.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.google.gson.Gson;

import jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator;
import kr.or.member.model.service.MemberService;
import kr.or.member.model.vo.DirectMessage;
import kr.or.member.model.vo.Member;

@Controller
@CrossOrigin(origins = "*")
public class MemberController {
	@Autowired
	private MemberService service;
	
	public MemberController() {
		super();
		System.out.println("MemberController 생성 완료");
	}	
	@RequestMapping(value="/login.do")
	public String login(Member m,HttpSession session,Model model) {
		Member member = service.selectOneMember(m);
		if(member!=null) {			 
			session.setAttribute("m", member);
			model.addAttribute("msg","로그인 성공");						
		}else {
			model.addAttribute("msg","아이디 또는 비밀번호를 확인해주세요");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	@RequestMapping(value="/joinFrm.do")
	public String joinFrm() {
		return "member/joinFrm";
	}
	@RequestMapping(value="/join.do")
	public String join(Member m, Model model) {
		int result = service.insertMember(m);
		if(result>0) {
			model.addAttribute("msg", "회원가입 성공");
		}else {
			model.addAttribute("msg", "회원가입 실패");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	@RequestMapping(value="/searchFrm.do")
	public String searchFrm() {
		///WEB-INF/views/.jsp
		return "member/searchFrm";
	}
	@RequestMapping(value="/idSearch.do")
	public String idSearch(Member m,Model model) {
		Member member = service.searchId(m);
		if(member!=null) {
			model.addAttribute("msg","아이디는 ["+member.getMemberId()+"] 입니다.");
		}else {
			model.addAttribute("msg","정보를 조회할 수 없습니다.");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";		
	}
	@RequestMapping(value="/deleteMember.do")
	public String deleteMember(String memberId,HttpSession session,Model model) {
		int result = service.deleteMember(memberId);
		if(result>0) {
			session.invalidate();
			model.addAttribute("msg", "bye bye");
		}else {
			model.addAttribute("msg", "에러발생");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	@RequestMapping(value="/mypage.do")
	public String mypage(Member m,Model model) {
		Member member = service.selectOneMember(m);
		model.addAttribute("member", member);
		return "member/mypage";
	}
	@RequestMapping(value="/updateMember.do")
	public String updateMember(Member m) {
		int result = service.memberUpdate(m);
		return "redirect:/mypage.do?memberId="+m.getMemberId();
	}
	@RequestMapping(value="/allMember.do")
	public String allMember(Model model) {
		ArrayList<Member> list = service.selectAllMember();
		model.addAttribute("list", list);
		return "member/allMember";
	}
	@RequestMapping(value="/allMemberCount.do")
	public String allMemberCount(Model model) {
		int result = service.selectAllMemberCount();
		model.addAttribute("msg", "총 회원 수는 "+result+"명 입니다.");
		model.addAttribute("loc", "/");
		return "common/msg";		
	}
	@RequestMapping(value="/pwCheck.do")
	public String pwCheck() {
		return "member/pwCheck";
	}
	@ResponseBody
	@RequestMapping(value="/checkPw.do")
	public String checkPw(Member m) {
		//해당하는 아이디의 비밀번호가 일치하는지 확인		
		Member member = service.selectOneMember(m);
		if(member != null) {
			//입력한 비밀번호가 일치하는경우
			return "1";
		}else {
			//비밀번호 틀린경우
			return "0";
		}
	}
	@RequestMapping(value="/pwChange.do")
	public String pwChange(Member m,Model model) {
		int result = service.pwChangeMember(m);
		if(result>0) {
			model.addAttribute("msg", "변경 성공");
		}else {
			model.addAttribute("msg", "변경 실패");
		}
		model.addAttribute("loc","/mypage.do?memberId="+m.getMemberId());
		return "common/msg";
	}
	
	@ResponseBody
	@RequestMapping(value="/idCheck.do")
	public String idCheck(Member m) {
		Member member = service.selectOneMember(m);
		if(member != null) {
			return "1";
		}else {
			return "0";
		}
	}
	@RequestMapping(value="/allMemberAjax.do")
	public String allMemberFrm() {
		return "member/allMemberAjax";
	}
	@ResponseBody
	@RequestMapping(value="/allMemAjax.do",produces="application/json;charset=utf-8")
	public String allMemAjax() {
		ArrayList<Member> list = service.selectAllMember();
		return new Gson().toJson(list);
	}
	@RequestMapping(value="/allMemberChat.do")
	public String allMemberChat() {
		return "member/allChat";
	}
	@RequestMapping(value="/dmList.do")
	public String dmList(@SessionAttribute(required = false) Member m, Model model) {
		ArrayList<DirectMessage> list = service.selectDmList(m.getMemberId());
		model.addAttribute("list", list);
		return "dm/dmList";
	}
	@ResponseBody
	@RequestMapping(value="/receiverList.do",produces="application/json;charset=utf-8")
	public String receiverList(@SessionAttribute Member m) {
		ArrayList<String> list = service.receiverList(m.getMemberId());
		return new Gson().toJson(list);
	}
	@ResponseBody
	@RequestMapping(value="/sendDm.do")
	public int sendDm(DirectMessage dm) {
		return service.insertDm(dm);
	}
	
}











