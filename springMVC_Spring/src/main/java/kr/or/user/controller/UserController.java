package kr.or.user.controller;

import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.google.gson.Gson;

import kr.or.user.model.service.UserService;
import kr.or.user.model.vo.User;

@Controller
public class UserController {

	@Autowired
	private UserService service;
	
	@RequestMapping(value = "/login.do")
	public String login(User u,HttpSession session,Model model) {
		User user = service.selectOneUser(u);
		if(user != null) {
			session.setAttribute("u", user);
			model.addAttribute("msg","로그인 성공!");
		}else {
			model.addAttribute("msg","로그인 실패ㅠ");
		}
		model.addAttribute("loc","/");
		return "common/msg";
	}
	
	@RequestMapping(value = "/joinFrm.do")
	public String joinFrm() {
		return "user/joinFrm";
	}
	
	@RequestMapping(value="/join.do")
	public String insertUser(User u,Model model) {
		int result = service.insertUser(u);
		if(result>0) {
			model.addAttribute("msg","가입성공!");
		}else {
			model.addAttribute("msg","가입실패!");
		}
		model.addAttribute("loc","/");
		return "common/msg";
	}
	
	@RequestMapping(value="/logout.do")
	public String logout(Model model,HttpSession session) {
		if(session !=null) {
			session.invalidate();
			model.addAttribute("msg","로그아웃 하였습니다.");
		}
		model.addAttribute("loc","/");
		return "common/msg";
	}
	
	@RequestMapping(value="/mypage.do")
	public String mypage(@SessionAttribute(required = false) User u,Model model) {
		User user = service.selectOneUser(u);
		model.addAttribute("user",user);
		return "user/mypage";
	}
	
	@RequestMapping(value="/updatemember.do")
	public String updatemember(User u,Model model) {
		int result = service.updateUser(u);
		if(result>0) {
			model.addAttribute("msg","정보 수정되었습니다.");
		}else {
			model.addAttribute("msg","정보 변경 실패");
		}
		model.addAttribute("loc","mypage.do?userEmail="+u.getEmail());
		return "common/msg";
	}
	
	@RequestMapping(value="/deleteUser.do")
	public String deleteUser(String userEmail,Model model,HttpSession session) {
		int result = service.deleteUser(userEmail);
		
		if(result>0) {
			model.addAttribute("msg","탈퇴완료!");
			session.invalidate();
		}else {
			model.addAttribute("msg","탈퇴실패");
		}
		model.addAttribute("loc","/");
		return "common/msg";
	}
	
	@RequestMapping(value = "/searchFrm.do")
	public String searchFrm() {
		return "user/searchFrm";
	}
	
	@RequestMapping(value = "/pwSearch.do")
	public String searchPw(User u,Model model) {
		User user = service.selectOnePw(u);
		if(user != null) {
			model.addAttribute("msg","회원님의 비밀번호는 ["+user.getUserPw()+"]입니다");
		}else {
			model.addAttribute("msg","회원님의 정보가 조회되지 않습니다.");
		}
		model.addAttribute("loc","/searchFrm.do");
		return "common/msg";
	}
	
	
	
	//아작스에 값 리턴해줘야하니 ResponseBody
	   @ResponseBody
	   @RequestMapping(value="/idChk.do")
	   public String idChk(@SessionAttribute(required = false) User u) {
		   User member  = service.selectOneUser(u);
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
	   
	   
}

















