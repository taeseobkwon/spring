package com.multi.mvc03;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class MemberDAO {
@Autowired

SqlSessionTemplate my;

public void insert(MemberVO vo) {
	my.insert("member.create", vo);
}
public void update(MemberVO vo) {
	my.update("member.up", vo);
}
public void delete(MemberVO vo) {
	my.delete("member.del", vo);
}
public List<MemberVO> list() {
	return my.selectList("member.all");
}
public MemberVO one(MemberVO vo) {
	return my.selectOne("member.one", vo);
}
public MemberVO login(MemberVO vo) {
	return my.selectOne("member.login", vo);
}
	
}
