package kr.board.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.domain.Tbl_plating;
import kr.board.domain.User;
import kr.board.mapper.MemberMapper;
import kr.board.mapper.UploadMapper;

@Controller
public class UploadController {

	@Autowired
	UploadMapper mapper;
	
	@RequestMapping("/upload.do")
	public String Upload(Tbl_plating vo, HttpSession session) { 
		vo.setMember_id(((User)session.getAttribute("userVO")).getMember_id());
		mapper.upload(vo);
		System.out.println("업로드 성공");
		//upload성공: 우선 마이페이지로 이동되게 함
		return "mypage"; 
	}
	
}
