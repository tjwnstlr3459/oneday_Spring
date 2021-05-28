package kr.or.notice.contoller;

import java.util.ArrayList;

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
}

















