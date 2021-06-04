package kr.or.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.aspectj.lang.JoinPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.common.LogClass;
import kr.or.common.LoggingClass;
import kr.or.common.PasswordEnc;
import kr.or.member.model.dao.MemberDao;
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
		Member member = dao.selectOneMember(m);
		return member;
	}

	@Transactional
	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return dao.insertMember(m);
	}

	
	public Member searchId(Member m) {
		Member member = dao.searchId(m);
		return member;
	}

	public Member searchPw(Member m) {
		Member member = dao.searchPw(m);
		return member;
	}
	
	@Transactional
	public int deleteMember(String memberId) {
		int result = dao.deleteMember(memberId);
		return result;
	}
	
	public Member selectOneMember(String memberId) {
		Member member = dao.selectOneMember(memberId);
		return member;
	}

	@Transactional	
	public int updateMemberUpdate(Member m) {
		int result = dao.updateMember(m);
		return result;
	}

	public ArrayList<Member> selectAllMember() {
		List list = dao.selectAllMember();
		return (ArrayList<Member>)list;
	}

	public int allMemberCount() {
		int result = dao.allMemberCount();
		return result;
	}
	
	public Member pwCheckMember(Member m) {
		
		Member member = dao.pwCheck(m);
		return member;
	}

	@Transactional
	public int pwUpdateMember(Member m) {
		int result = dao.pwUpdate(m);
		return result;
	}

	/*
	 * public Coupon selectCoupon(Member m) { return dao.selectCoupon(m); }
	 */

	
}
















