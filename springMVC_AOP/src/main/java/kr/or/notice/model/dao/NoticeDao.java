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

	public int insertNotice(String title, String content, String writer) {
		String query ="insert into notice values(notice_seq.nextval,?,?,?,to_char(sysdate,'yyyy-mm-dd'))";
		Object[] params= {title,content,writer};
		int result = jdbcTemplate.update(query,params);
		return result;
	}

	public int updateNotice(String title, String content, int no) {
		String query ="update notice set notice_title=?,notice_content=? where notice_no=?";
		Object[] params= {title,content,no};
		int result = jdbcTemplate.update(query,params);
		return result;
	}

	public int deleteNotice(int noticeNo) {
		String query ="delete from notice where notice_no=?";
		Object[] params= {noticeNo};
		int result = jdbcTemplate.update(query,params);
		return result;
	}

}
