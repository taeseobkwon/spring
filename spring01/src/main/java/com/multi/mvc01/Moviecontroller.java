package com.multi.mvc01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Moviecontroller {
	
	@RequestMapping("movie")
	public String movie(String movie) {
		System.out.println("영화 요청");
		System.out.println("받은 영화는 " + movie);
		if (movie.equals("코믹")) {
			return "comic";
		} else if (movie.equals("드라마")) {
			return "drama";
		} else if (movie.equals("액션")){
			return "action";
		} else {
			return "no";
		}
	}
}
