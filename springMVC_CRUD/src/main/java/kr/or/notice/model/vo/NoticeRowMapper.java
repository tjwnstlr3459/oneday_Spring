package kr.or.notice.model.vo;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class NoticeRowMapper implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		Notice n = new Notice();
		n.setNoNo(rs.getInt("notice_no"));
		n.setNoTitle(rs.getNString("notice_title"));
		n.setNoContent(rs.getNString("notice_content"));
		n.setNoWriter(rs.getNString("notice_writer"));
		n.setNoDate(rs.getNString("notice_Date"));
		
		return n;
	}

}
