package kr.or.member.model.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.Member;
import kr.or.member.model.vo.MemberRowMapper;

@Repository
public class MemberDao {
	//자동 연결문
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	public MemberDao() {
		super();
		System.out.println("MemberController 생성완료");
	}

	public List selectOneMember(Member m) {
		String query = "select * from member where member_id=? and member_pw=?";
		Object[] params = {m.getMemberId(),m.getMemberPw()};
		List list = jdbcTemplate.query(query,params,new MemberRowMapper());
		return list;
	}

	public int insertMember(Member m) {
		String query = "insert into member values(?,?,?,?,?,?)";
		Object[] params = {m.getMemberId(), m.getMemberPw(), m.getMemberName(),m.getPhone(),m.getAddress(),m.getGender()};
		int result = jdbcTemplate.update(query,params);
		return result;
	}
}
