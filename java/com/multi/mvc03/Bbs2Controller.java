package com.multi.mvc03;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class Bbs2Controller {
	@Autowired
	Bbs2DAO dao;
	
	@RequestMapping("insert3")
	public void	insert(Bbs2VO bbs2VO,HttpServletRequest request,MultipartFile file,Model model) throws Exception{
		String savedName= file.getOriginalFilename();
		String uploadPath = request.getSession().getServletContext().getRealPath("resources/upload");
		File target = new File(uploadPath + "/" + savedName);
		file.transferTo(target);
		model.addAttribute("savedName",savedName );
		bbs2VO.setFileName(savedName);
		dao.insert(bbs2VO);
		System.out.println(bbs2VO);
		
	} 
}
