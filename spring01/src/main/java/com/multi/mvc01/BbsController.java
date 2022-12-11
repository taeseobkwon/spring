package com.multi.mvc01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //스프링에 컨트롤러 역할을 하는 클래스라고 등록 + 싱글톤
public class BbsController {

	
	@Autowired //이미 ram에 만들어서 저장해놓은 주소를 찾아서(wired) 자동으로 아래 변수에 그 주소를 넣어줘
	BbsDAO dao; //주소가 들어가 있음
	
	@RequestMapping("insert2.multi")
	public void insert(BbsDTO dto) {
		//1. 데이터를 받아서 dto를 만들어서 집어 넣어라
		System.out.println(dto);
		//2. dao에 dto를 주고 insert해라고 요청
		dao.insert(dto);
		//3. 결과를 열려주는 페이지 호출(insert2.jsp 자동 호출)
	}
	
	@RequestMapping("delete2.multi")
	public void delete(String id) {
		dao.delete(id);
	}
	
	
}
