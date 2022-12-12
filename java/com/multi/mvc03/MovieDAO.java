package com.multi.mvc03;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MovieDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(MovieVO vo) {
		my.insert("movie.insert", vo);
	}
	
	public List<MovieVO> all(){
		return my.selectList("movie.all");
	}
}
