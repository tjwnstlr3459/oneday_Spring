package kr.or.coupon.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.coupon.model.dao.CouponDao;
import kr.or.coupon.model.vo.Coupon;
import kr.or.member.model.vo.Member;

@Service
public class CouponService {

	@Autowired
	private CouponDao dao;
	
	public ArrayList<Coupon> selectCoupon(Member m) {
		return dao.selectCoupon(m);
	}

	public int couponExpired() {
		return dao.couponExpired();
	}

}
