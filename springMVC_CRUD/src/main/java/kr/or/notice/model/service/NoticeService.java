package kr.or.notice.model.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.notice.model.dao.NoticeDao;
import kr.or.notice.model.vo.Notice;

@Service
public class NoticeService {
	@Autowired
	private NoticeDao dao;
	
	
	public ArrayList<Notice> selectNotice() {
		List list = dao.selectNotice();
		return (ArrayList<Notice>)list;
	}


	public ArrayList<Notice> selectOneNotice(int noticeNo) {
		List list = dao.selectOneNotice(noticeNo);
		return (ArrayList<Notice>)list;
	}


	public int insertNotice(String title, String content, String writer) {
		int result = dao.insertNotice(title,content,writer);
		return result;
	}

}
