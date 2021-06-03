package kr.or.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.user.model.vo.User;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	public User selectOneUser(User u) {
		return sqlsession.selectOne("user.selectOne",u);
	}

	public int insertUser(User u) {
		return sqlsession.update("user.insertUser",u);
	}

	public User selectOneUserEmail(String userEmail) {
		return sqlsession.selectOne("user.selectEmail",userEmail);
	}

	public int updateUser(User u) {
		return sqlsession.update("user.updateUser",u);
	}

	public int deleteUser(String userEmail) {
		return sqlsession.delete("user.deleteUser",userEmail);
	}

}
