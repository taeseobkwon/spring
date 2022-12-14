package com.multi.mvc03;

import org.springframework.stereotype.Service;

@Service
public class BookPageService {

	public int pages(int count) {
		int pages = 0;
		if(count % 10 == 0) {
			pages = count / 10; //120개 --> 12pages
		}else {
			pages = count / 10 + 1; //122개 --> 13pages 
		}
		return pages;
	}
	
}
