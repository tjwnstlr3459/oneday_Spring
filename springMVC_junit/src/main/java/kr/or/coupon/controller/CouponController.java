package kr.or.coupon.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.coupon.model.service.CouponService;
import kr.or.coupon.model.vo.Coupon;
import kr.or.member.model.vo.Member;

@Controller
public class CouponController {
	@Autowired
	private CouponService service;
	
	 @RequestMapping(value = "/couponList.do")
	   public String couponList(@SessionAttribute(required = false) Member m,Model model) {
		   ArrayList<Coupon> list = service.selectCoupon(m);
		   model.addAttribute("list",list);
		return "coupon/couponList";
	   }
	 
	 @RequestMapping("/couponExpired.do")
	 public String couponExpired(Model model) {
		 int result = service.couponExpired();
		 model.addAttribute("msg","총"+result+"개 쿠폰이 만료되었습니다.");
		 model.addAttribute("loc","/");
		return "common/msg";
	 }
}











