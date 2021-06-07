package kr.or.member.model.dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.aspectj.lang.JoinPoint;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.Dm;
import kr.or.member.model.vo.Member;
import kr.or.member.model.vo.MemberRowMapper;

@Repository
public class MemberDao {
	//자동 연결문
	@Autowired
	private SqlSessionTemplate sqlSession;
//	private JdbcTemplate jdbcTemplate;
	
	
	public MemberDao() {
		super();
		System.out.println("MemberController 생성완료");
	}

	public Member selectOneMember(Member m) {
		Member member = sqlSession.selectOne("member.selectOneMember",m);
		return member;
//		String query = "select * from member where member_id=? and member_pw=?";
//		Object[] params = {m.getMemberId(),m.getMemberPw()};
//		List list = jdbcTemplate.query(query,params,new MemberRowMapper());
//		return list;
	}

	public int insertMember(Member m) {
		int result = sqlSession.update("member.insertMember",m);
//		String query = "insert into member values(?,?,?,?,?,?)";
//		Object[] params = {m.getMemberId(), m.getMemberPw(), m.getMemberName(),m.getPhone(),m.getAddress(),m.getGender()};
//		int result = jdbcTemplate.update(query,params);
		return result;
	}

	public Member searchId(Member m) {
		Member member = sqlSession.selectOne("member.searchId",m);
//		String query = "select * from member where member_name=? and phone=?";
//		Object[] params = {m.getMemberName(),m.getPhone()};
//		List list = jdbcTemplate.query(query, params, new MemberRowMapper());
		return member;
	}

	public Member searchPw(Member m) {
		Member member = sqlSession.selectOne("member.searchPw",m);
//		String query ="select * from member where member_id=? and phone=?";
//		Object[] params = {m.getMemberId(),m.getPhone()};
//		List list = jdbcTemplate.query(query,params,new MemberRowMapper());
		return member;
	}
	
	public int deleteMember(String memberId) {
		int result = sqlSession.delete("member.deleteMember",memberId);
//		String query = "delete from member where member_id=?";
//		Object[] params = {memberId};
//		int result = jdbcTemplate.update(query,params);	
//		//값이 하나면 params 대신 memberId만 적어도된다
//		//하지만 select에선 안되기에 그냥 맘편히 Object[]에 넣어서 보내면 된다
		return result;
	}

	public Member selectOneMember(String memberId) {
		Member member = sqlSession.selectOne("member.selectOneMemberMypage",memberId);
//		String query = "select * from member where member_id=?";
//		Object[] params = {memberId};
//		List list = jdbcTemplate.query(query,params,new MemberRowMapper());
		return member;
	}

	public int updateMember(Member m) {
		int result = sqlSession.update("member.update",m);
//		String query = "update member set phone=?,address=?,gender=? where member_id=?";
//		Object[] params = {m.getPhone(),m.getAddress(),m.getGender(),m.getMemberId()};
//		int result = jdbcTemplate.update(query,params);
		return result;
	}


	public List selectAllMember() {
		List list = sqlSession.selectList("member.selectAllMember");
//		String query ="select * from member";
//		List list = jdbcTemplate.query(query, new MemberRowMapper());
		return list;
	}

	
	
	public int allMemberCount() {
		int result = sqlSession.selectOne("member.selectMemberCount");
//		String query = "select count(*) from member";
//		//DB에서 받을 값이 정수라서 int.class로 변환해서받는다
//		//안그러면 귀찮게 rowMapper를 또 만들어야하니
//		int result = jdbcTemplate.queryForObject(query, int.class);
		return result;
	}

	public Member pwCheck(Member m) {
		Member member = sqlSession.selectOne("member.selectOneMember",m);
//		String query = "select * from member where member_pw=? and member_id=?";
//		Object[] params = {m.getMemberPw(),m.getMemberId()};
//		List list = jdbcTemplate.query(query,params,new MemberRowMapper());
		return member;
	}

	public int pwUpdate(Member m) {
		int result = sqlSession.update("member.updatePw",m);
//		String query = "update member set member_pw=? where member_id=?";
//		Object[]params = {m.getMemberPw(),m.getMemberId()};
//		int result = jdbcTemplate.update(query,params);
		return result;
	}

	public List selectDm(Member m) {
		List d = sqlSession.selectList("dm.selectDm",m);
		return d;
	}

	public int insertDm(Dm d) {
		int result = sqlSession.update("dm.insertDm",d);
		return result;
	}

	/*
	 * public Coupon selectCoupon(Member m) { Coupon coupon =
	 * sqlSession.selectOne("member.selectCoupon",m); return coupon; }
	 */

}










