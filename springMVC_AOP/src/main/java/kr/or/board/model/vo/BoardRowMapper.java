package kr.or.board.model.vo;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BoardRowMapper implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		Board b = new Board();
		b.setBoardNo(rs.getInt("board_no"));
		b.setBoardTitle(rs.getNString("board_title"));
		b.setBoardWriter(rs.getNString("board_writer"));
		b.setBoardContent(rs.getNString("board_content"));
		b.setBoardDate(rs.getNString("board_date"));
		
		return b;
	}
	

}
