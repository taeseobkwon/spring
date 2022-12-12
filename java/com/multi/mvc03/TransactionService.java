package com.multi.mvc03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TransactionService {
	@Autowired
	MemberDAO dao;
	@Autowired
	BbsDAO dao2;

	@Transactional
	public int tran(MemberVO vo, BbsVO vo2) throws Exception {// 트랜잭션 처리해주는 메서드
		// 회원가입 처리
		System.out.println("서비스 호출됨");
		int result = 1;
		dao.insert(vo);
		System.out.println("아이디 입력됨");
		// 게시판 글쓰기 처리
		dao2.insert(vo2);
		return result;
	}
}
