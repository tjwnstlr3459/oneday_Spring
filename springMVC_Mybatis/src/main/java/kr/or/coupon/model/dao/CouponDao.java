package kr.or.coupon.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.coupon.model.vo.Coupon;
import kr.or.member.model.vo.Member;

@Repository
public class CouponDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Coupon> selectCoupon(Member m) {
		List list = sqlSession.selectList("coupon.selectCoupon",m);
		return (ArrayList<Coupon>)list;
	}

	public int couponExpired() {
		return sqlSession.update("coupon.couponExpired");
	}

}
