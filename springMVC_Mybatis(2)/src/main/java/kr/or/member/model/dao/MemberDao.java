package kr.or.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.or.member.model.vo.DirectMessage;
import kr.or.member.model.vo.Member;


@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	public MemberDao() {
		super();
		System.out.println("MemberDao 생성완료");
	}
	public Member selectOneMember(Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.selectOneMember",m);
	}
	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return sqlSession.insert("member.insertMember",m);
	}
	public Member searchId(Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.searchId",m);
	}
	public int deleteMember(String memberId) {
		// TODO Auto-generated method stub
		return sqlSession.delete("member.deleteMember",memberId);
	}
	public int memberUpdate(Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("member.updateMember",m);
	}
	public ArrayList<Member> selectAllMember() {
		List<Member> list = sqlSession.selectList("member.selectAllMember");
		return (ArrayList<Member>)list;
	}
	public int selectAllMemberCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.allMemberCount");
	}
	public int pwChangeMember(Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("member.pwChangeMember",m);
	}
	public ArrayList<DirectMessage> selectDmList(String memberId) {
		List<DirectMessage> list= sqlSession.selectList("member.selectDmList",memberId);
		return (ArrayList<DirectMessage>)list;
	}
	public ArrayList<String> receiverList(String memberId) {
		List<String> list = sqlSession.selectList("member.receiverList",memberId);
		return (ArrayList<String>)list;
	}
	public int insertDm(DirectMessage dm) {
		// TODO Auto-generated method stub
		return sqlSession.insert("member.insertDm",dm);
	}
	public int dmCount(String memberId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.dmCount",memberId);
	}

}






