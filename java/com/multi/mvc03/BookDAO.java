package com.multi.mvc03;




import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BookDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public BookVO one(BookVO vo) {
	return my.selectOne("book.one",vo);
	}
	public List<BookVO> all() {
		return  my.selectList("book.all");
	}
	
	
	public void insert(BookVO vo) {
		my.insert("book.create", vo);
	}
	public void update(BookVO vo) {
		my.update("book.up",vo);
	}
	public void delete(BookVO vo) {
		int result = my.delete("book.delete",vo);
		System.out.println("삭제 완료 갯수 : "+result);
	}
	//1208 북마크리스트 페이징 고급화
	public int count() {
		return my.selectOne("book.count");
	}
	public List<BookVO> list(PageVO vo) {
		return  my.selectList("book.all2",vo);
	}
}
