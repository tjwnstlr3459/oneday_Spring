package kr.or.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		List list = dao.selectOneMember(m);
		Member member = null;
		if(!list.isEmpty()) {
			member = (Member)list.get(0);
		}
		return member;
	}

	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return dao.insertMember(m);
	}
}
