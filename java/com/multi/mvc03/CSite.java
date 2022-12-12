package com.multi.mvc03;

import org.springframework.stereotype.Component;

@Component("cSite1")
public class CSite implements CSiteInterface {

	@Override
	public void orderView() {
		System.out.println("주문정보를보다.");

	}

	@Override
	public void confrim() {
		System.out.println("주문정보를 확인하다");

	}

}
