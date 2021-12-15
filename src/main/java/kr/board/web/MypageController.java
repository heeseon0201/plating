package kr.board.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.domain.Tbl_ingredient;
import kr.board.domain.Tbl_plating;
import kr.board.domain.User;
import kr.board.mapper.MemberMapper;
import kr.board.mapper.MypageMapper;

@Controller
public class MypageController {

	@Autowired
	MypageMapper mapper;
	
	@RequestMapping("/mypage_view.do")
	public String mypage_view() {
		return "mypage";
	}
	
	@RequestMapping("/upload.do")
	public String Upload(Tbl_plating vo, HttpSession session) { 
		vo.setMember_id(((User)session.getAttribute("userVO")).getMember_id());
		mapper.upload(vo);
		System.out.println("업로드 성공");
		//upload성공: 우선 마이페이지로 이동되게 함
		return "mypage"; 
	}
	
	@RequestMapping("/mypage.do")
	public String mypage(HttpSession session) {
		String member_id = ((User)session.getAttribute("userVO")).getMember_id();
		//나의 플레이팅 출력
		Tbl_plating my_platingVO = mapper.platingView(member_id);
		if(my_platingVO != null) {
			session.setAttribute("my_platingVO", my_platingVO);			
			System.out.println("나의 플레이팅 출력 성공");
		}
		//나의 재료 출력
		Tbl_ingredient my_ingreView = mapper.ingreView(member_id);
		if(my_ingreView != null) {
			session.setAttribute("my_ingreView", my_ingreView);			
			System.out.println("나의 재료 출력 성공");
		}
		return "mypage";
	}
	
	//상세페이지의 별점 출력(DAO는 제작해둠)
	//mapper.ratingView(plating_seq)
	
}
