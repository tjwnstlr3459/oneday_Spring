package kr.or.user.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.user.model.dao.UserDao;
import kr.or.user.model.vo.User;


@Service
public class UserService {
	@Autowired
	private UserDao dao;
	
	public User selectOneUser(User u) {
		return dao.selectOneUser(u);
	}

	public int insertUser(User u) {
		return dao.insertUser(u);
	}

	public User selectOneUser(String userEmail) {
		return dao.selectOneUserEmail(userEmail);
	}

	public int updateUser(User u) {
		return dao.updateUser(u);
	}

	public int deleteUser(String userEmail) {
		return dao.deleteUser(userEmail);
	}

}
