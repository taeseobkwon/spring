package com.multi.mvc03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("create")
	public void insert(MemberVO vo) {
		dao.insert(vo);
	}
	@RequestMapping("up")
	public void update(MemberVO vo) {
		dao.update(vo);
	}
	@RequestMapping("delete")
	public void delete(MemberVO vo) {
		dao.delete(vo);
	}
	@RequestMapping("all")
	public void all(Model model) {
		model.addAttribute("list", dao.list());
		
	}
	@RequestMapping("one")
	public void one(MemberVO vo,Model model) {
		model.addAttribute("dto", dao.one(vo));
	}
	@RequestMapping("login")
	public String login(MemberVO vo,Model model) {
		MemberVO dto=dao.login(vo);
		if (dto!=null) {
			model.addAttribute("dto", dto);
			return "one";
		}else {
			return "fail";
		}
	}
	
}
