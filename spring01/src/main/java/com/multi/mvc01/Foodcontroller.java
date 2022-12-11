package com.multi.mvc01;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Foodcontroller {

	@Autowired
	FoodDAO dao;
	
	@RequestMapping("food_insert")
	public void insert(FoodDTO bag) {
		
		dao.insert(bag);
	}
	
	@RequestMapping("food_delete")
	public String delete(String name) {
		
		int result = dao.delete(name);
		if (result == 1) {
			return "food_delete";
		} else {
			return "redirect:food.jsp";
		}
	}
	
	
	@RequestMapping("food_list")
	public void list(Model model) {
		ArrayList<FoodDTO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("food_one")
	public void one(String name, Model model) {
		FoodDTO dto = dao.one(name);
		model.addAttribute("dto", dto);
	}
	
	@RequestMapping("food_update")
	public void update(FoodDTO bag) {
		dao.update(bag);
		
	}
	
}
