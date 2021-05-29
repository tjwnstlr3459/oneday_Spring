package kr.or.notice.contoller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;

import javax.xml.ws.Service.Mode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.notice.model.service.NoticeService;
import kr.or.notice.model.vo.Notice;

@Controller
public class NoticeController {
	//자주쓸거라 전역변수 선언
		@Autowired
		private NoticeService service;
	
	@RequestMapping(value="/notice.do")
	public String notice(Model model) {
		ArrayList<Notice> list = service.selectNotice();
		model.addAttribute("list", list);
		return "notice/noticeList";
	}
	
	@RequestMapping(value="/noticeListCheck.do")
	public String noticeListCheck(Model model,int noticeNo) {
		ArrayList<Notice> list = service.selectOneNotice(noticeNo);
		model.addAttribute("list",list);
		return "notice/noticeListCheck";
	}
	
	@RequestMapping(value="/noticeWrite.do")
	public String noticeWrite(Model model,Notice n) {
		
		model.addAttribute("n",n);
		return "notice/noticeWrite";
	}
	
	@RequestMapping(value="/noticeInsert.do")
	public String noticeWrite(Model model,String title, String content, String writer) {
		System.out.println(title);
		System.out.println(content);
		System.out.println(writer);
		int result = service.insertNotice(title,content,writer);
		if(result>0) {
			model.addAttribute("msg","게시물 등록 완료");
		}else {
			model.addAttribute("msg","게시물 등록 실패");
		}
		model.addAttribute("loc","/notice.do");
		
		return "common/msg";
	}
}

















