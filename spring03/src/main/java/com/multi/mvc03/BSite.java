package com.multi.mvc03;

import org.springframework.stereotype.Component;

@Component
public class BSite implements BSiteInterface {

	
	@Override
	public void search() {
		System.out.println("물건 검색");
	}
	
	@Override
	public void basket() {
		System.out.println("장바구니에 넣기");
	}
	
	@Override
	public void productOrder() {
		System.out.println("주문하기");
	}
}
