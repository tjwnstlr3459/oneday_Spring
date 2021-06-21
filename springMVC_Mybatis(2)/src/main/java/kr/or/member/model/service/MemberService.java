package kr.or.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.common.LogClass;
import kr.or.common.LoggingClass;
import kr.or.member.model.dao.MemberDao;
import kr.or.member.model.vo.DirectMessage;
import kr.or.member.model.vo.Member;

@Service
public class MemberService {
	@Autowired
	private MemberDao dao;
	
	public MemberService() {
		super();
		System.out.println("MemberService 생성완료");		
	}

	public Member selectOneMember(Member m) {
		// TODO Auto-generated method stub
		return dao.selectOneMember(m);
	}
	
	@Transactional
	public int insertMember(Member m) {
		// TODO Auto-generated method stub		
		return dao.insertMember(m);
	}

	public Member searchId(Member m) {
		// TODO Auto-generated method stub
		return dao.searchId(m);
	}
	@Transactional
	public int deleteMember(String memberId) {
		// TODO Auto-generated method stub
		return dao.deleteMember(memberId);
	}
	@Transactional
	public int memberUpdate(Member m) {
		// TODO Auto-generated method stub
		return dao.memberUpdate(m);
	}

	public ArrayList<Member> selectAllMember() {
		// TODO Auto-generated method stub
		return dao.selectAllMember();
	}

	public int selectAllMemberCount() {
		// TODO Auto-generated method stub
		return dao.selectAllMemberCount();
	}
	@Transactional
	public int pwChangeMember(Member m) {
		// TODO Auto-generated method stub
		return dao.pwChangeMember(m);
	}

	public ArrayList<DirectMessage> selectDmList(String memberId) {
		// TODO Auto-generated method stub
		return dao.selectDmList(memberId);
	}

	public ArrayList<String> receiverList(String memberId) {
		// TODO Auto-generated method stub
		return dao.receiverList(memberId);
	}
	@Transactional
	public int insertDm(DirectMessage dm) {
		// TODO Auto-generated method stub
		return dao.insertDm(dm);
	}

	public int dmCount(String memberId) {
		// TODO Auto-generated method stub
		return dao.dmCount(memberId);
	}

	
}
