package kr.or.board.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import kr.or.board.model.dao.BoardDao;
import kr.or.board.model.vo.Board;
import kr.or.board.model.vo.BoardRowMapper;
import kr.or.board.model.vo.File;

@Service
public class BoardService {

	@Autowired
	private BoardDao dao;

	
	
	
	
	public int insertBoard(Board b, ArrayList<File> fileList) {
		//파일은 board_no가 필요하기 때문에 board테이블의 insert가 먼저
		int result1 = dao.insertBoard(b);
		int result = 0;
		if(result1>0) {
			//파일 insert하기 전에 board_no가 필요함
			int boardNo = dao.selectBoardNo();
			for(File f : fileList) {
				f.setBoardNo(boardNo);
				result += dao.insertFile(f);
			}
		}else {
			return -1;
		}
		return result;
	}

	public ArrayList<Board> selectAllBoard() {
		List list = dao.selectAllBoard();
		return (ArrayList<Board>)list;
	}
//
//	public Board selectOneBoard(int boardNo) {
//		List list = dao.selectOneBoard(boardNo);
//		
//		List file = dao.selectFile(boardNo);
//		
//		
//		
//		Board b = new Board();
//		
//		b=(Board)list.get(0);
//		b.setFileList((ArrayList<File>)file);
//		
//
//		return b;
//	}
}
















