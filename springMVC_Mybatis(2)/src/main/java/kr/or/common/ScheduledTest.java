package kr.or.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import kr.or.coupon.model.service.CouponService;

@Component
public class ScheduledTest {
	@Autowired
	private CouponService service;
	@Scheduled(cron = "0 14 10 * * *")	
	public void expired() {
		service.couponExpired();
	}
	/*
	 * @Scheduled(fixedDelay = 60000) public void test1() {
	 * System.out.println("예약실행 테스트 1(1분)"); }

	@Scheduled(cron = "* * * * * *" )
	public void test2() {
		System.out.println("cron : 1초에 한번 실행");
	}
	@Scheduled(cron = "10 * * * * *")
	public void test3() {
		System.out.println("cron : 매분 10초마다 실행(1분에 한번)");
	}
	*
	
	@Scheduled(cron = "0-15 * * * * *")
	public void test4() {
		System.out.println("cron test(매분 0초에서 15초 사이에 1초간격으로)");
	}
	
	@Scheduled(cron = "0/5 * * * * *")
	public void test5() {
		System.out.println("cron test(매분 0초에 시작해서 5초간격으로)");
	}
	*/
}
