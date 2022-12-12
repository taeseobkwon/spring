package com.multi.mvc03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
	
	@Autowired
	BookDAO dao;
	@Autowired
	PageService page;
	
	@RequestMapping("insert.do")
	public void insert(BookVO vo) {
		dao.insert(vo);
	}
	
	@RequestMapping("up2")
	public void update(BookVO vo) {
		dao.update(vo);
	}
	@RequestMapping("delete2")
	public void delete(BookVO vo) {
		dao.delete(vo);
	}
	@RequestMapping("one2")
	public void one(BookVO vo , Model model) {
	model.addAttribute("dto", dao.one(vo));
	}
	@RequestMapping("all2")
	public void all( Model model) {
	model.addAttribute("list", dao.all());
	}
	//북마크 리스트 페이징 하기
	@RequestMapping("bookpage")
	public void all2(PageVO vo, Model model) {
		vo.setStartEnd(vo.getPage());
		List<BookVO> list= dao.list(vo);
		model.addAttribute("list",list);
	}
	@RequestMapping("pagepage")
	public void all3( Model model) {
		int count= dao.count();
		int pages =page.pages(count);
		model.addAttribute("count", count);
		model.addAttribute("pages", pages);
	}
}
