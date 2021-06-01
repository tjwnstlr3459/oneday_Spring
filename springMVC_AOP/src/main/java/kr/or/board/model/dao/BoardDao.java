package kr.or.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.or.board.model.vo.Board;
import kr.or.board.model.vo.BoardRowMapper;
import kr.or.board.model.vo.File;
import kr.or.board.model.vo.FileRowMapper;

@Repository
public class BoardDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int insertBoard(Board b) {
		String query = "insert into board values(board_seq.nextval,?,?,?,to_char(sysdate,'yyyy-mm-dd'))";
		Object[] params = {b.getBoardTitle(),b.getBoardWriter(),b.getBoardContent()};
		int result = jdbcTemplate.update(query,params);
		
		return result;
	}

	public int selectBoardNo() {
		//가장 최신이 큰값이니 쿼리문 작성
		String query = "select max(board_no) from board";
		//정수 하나때문에 rowMapper를 만들기 귀찮으니 queryForObject문으로 하나만 받자
		int boardNo = jdbcTemplate.queryForObject(query, int.class);
		return boardNo;
	}

	public int insertFile(File f) {
		String query = "insert into file_tbl values(file_seq.nextval,?,?,?)";
		Object[] params = {f.getFileName(), f.getFilePath(), f.getBoardNo()};
		int result = jdbcTemplate.update(query,params);
		return result;
	}

	public List selectAllBoard() {
		String query = "select * from board order by 1 desc";
		List list = jdbcTemplate.query(query,new BoardRowMapper());
		return list;
	}

	public List selectOneBoard(int boardNo) {
		String query="select * from board where board_no=?";
		Object[] params = {boardNo};
		List list = jdbcTemplate.query(query, params,new BoardRowMapper());
		return list;
	}

	public List selectFile(int boardNo) {
		String query = "select * from file_tbl where board_no=?";
		Object[] params = {boardNo};
		List list = jdbcTemplate.query(query, params,new FileRowMapper());
		return list;
	}
}











