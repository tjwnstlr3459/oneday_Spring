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
		int result = service.insertNotice(title,content,writer);
		if(result>0) {
			model.addAttribute("msg","게시물 등록 완료");
		}else {
			model.addAttribute("msg","게시물 등록 실패");
		}
		model.addAttribute("loc","/notice.do");
		return "common/msg";
	}
	
	@RequestMapping(value="/updateNotice.do")
	public String updateNotice(Model model,int noticeNo) {
		ArrayList<Notice> n = service.selectOneNotice(noticeNo);
		model.addAttribute("notice",n);
		return "notice/noticeWriteUpdate";
	}
	
	@RequestMapping(value="/noticeUpdate.do")
	public String noticeUpdate(Model model,String title, String content, int no) {
		int result = service.updateNotice(title,content,no);
		if(result>0) {
			model.addAttribute("msg","게시물 수정 완료");
		}else {
			model.addAttribute("msg","게시물 수정 실패");
		}
		model.addAttribute("loc","/notice.do");
		return "common/msg";
	}
	
		@RequestMapping(value="/deleteNotice.do")
	public String deleteNotice(Model model, int noticeNo) {
		int result = service.deleteNotice(noticeNo);
		if(result>0) {
			model.addAttribute("msg","게시물이 삭제되었습니다");
		}else {
			model.addAttribute("msg","게시물 삭제 실패");
		}
		model.addAttribute("loc","/notice.do");
		return "common/msg";
	}
}

















