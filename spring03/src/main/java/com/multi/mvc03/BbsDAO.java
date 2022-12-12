package com.multi.mvc03;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate my;

	public int insert(BbsVO vo) {
		return my.insert("bbs.create", vo);
	}

	public List<BbsVO> all() {
		return my.selectList("bbs.all");
	}
}
