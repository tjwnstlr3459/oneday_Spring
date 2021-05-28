package kr.or.notice.model.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.or.notice.model.vo.Notice;
import kr.or.notice.model.vo.NoticeRowMapper;

@Repository
public class NoticeDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List selectNotice() {
		String query="select * from notice";
		List list = jdbcTemplate.query(query,new NoticeRowMapper());
		return list;
	}

	public List selectOneNotice(int noticeNo) {
		String query = "select * from notice where notice_no=?";
		Object[] params = {noticeNo};
 		List list = jdbcTemplate.query(query,params,new NoticeRowMapper());
		return list;
	}

}
