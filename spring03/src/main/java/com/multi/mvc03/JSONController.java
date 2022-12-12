package com.multi.mvc03;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JSONController {
	@Autowired
	BookDAO dao;
	
	@Autowired
	BbsDAO dao2;
	
	@Autowired
	MovieDAO dao3;
	
	@RequestMapping("jsonResponse1")
	@ResponseBody
	public BookVO json1(BookVO vo) {
		vo.setId("naver");
		vo.setName("naver");
		vo.setUrl("http://naver.com");
		vo.setImg("resources/img/naver.png");
		return vo;
	}
	@RequestMapping("jsonResponse2")
	@ResponseBody
	public List<BookVO> json2() {
		List<BookVO> list= new ArrayList<BookVO>(); 
		BookVO vo;
		for (int i = 0; i < 100; i++) {
			vo = new BookVO();
			vo.setId("naver");
			vo.setName("naver");
			vo.setUrl("http://naver.com");
			vo.setImg("resources/img/naver.png");
			list.add(vo);
		}
		vo = new BookVO();
		vo.setId("google");
		vo.setName("google");
		vo.setUrl("http://google.com");
		vo.setImg("resources/img/google.png");
		list.add(vo);
		return list;
	}
	@RequestMapping("jsonResponse3")
	@ResponseBody
	public BbsVO json3(BbsVO vo) {
		vo.setBbsid("naver");
		vo.setTitle("naver");
		vo.setContent("http://naver.com");
		vo.setWriter("resources/img/naver.png");
		return vo;
	}
	@RequestMapping("jsonResponse4")
	@ResponseBody
	public List<BbsVO> json4() {
		List<BbsVO> list= new ArrayList<BbsVO>(); 
		BbsVO vo;
		for (int i = 0; i < 100; i++) {
			vo = new BbsVO();
			vo.setBbsid("naver");
			vo.setTitle("naver");
			vo.setContent("http://naver.com");
			vo.setWriter("resources/img/naver.png");
			list.add(vo);
		}
		
		return list;
	}
	@RequestMapping("jsonResponse5")
	@ResponseBody
	public PointVO json5(PointVO vo) {
		vo.setPlace("삼성 코엑스");
		vo.setWid(37.5116827);
		vo.setLon(127.0591509);
		return vo;
	}
	@RequestMapping("jsonResponse6")
	@ResponseBody
	public List<PiechartDataVO> json6() {
		List<PiechartDataVO> list= new ArrayList<PiechartDataVO>(); 
		PiechartDataVO vo;
		for (int i = 1; i < 6; i++) {
			vo = new PiechartDataVO();
			vo.setDoing(i+"Something");
			vo.setTime(i);
			list.add(vo);
		}
		
		return list;
	}
	@RequestMapping("jsonbook")
	@ResponseBody
	public List<BookVO> all() {
		
	return dao.all();
	}
	@RequestMapping("jsonbbs")
	@ResponseBody
	public List<BbsVO> all2() {
		
		return dao2.all();
	}
	@RequestMapping("jsonmovie")
	@ResponseBody
	public List<MovieVO> all3() {
		
		return dao3.all();
	}
}
