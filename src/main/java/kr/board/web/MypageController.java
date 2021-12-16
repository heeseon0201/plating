package kr.board.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.board.domain.Tbl_ingredient;
import kr.board.domain.Tbl_plating;
import kr.board.domain.Tbl_reco_goods;
import kr.board.domain.User;
import kr.board.mapper.MemberMapper;
import kr.board.mapper.MypageMapper;

@Controller
public class MypageController {

	@Autowired
	MypageMapper mapper;
	

	@RequestMapping("/upload.do")
	public String Upload(Tbl_plating vo, HttpSession session) { 
		vo.setMember_id(((User)session.getAttribute("userVO")).getMember_id());
		mapper.upload(vo);
		System.out.println("업로드 성공");
		//upload성공: 우선 마이페이지로 이동되게 함
		return "mypage2"; 
	}
	
	@RequestMapping("/mypage.do")
	public String mypage(HttpSession session) {
		String member_id = ((User)session.getAttribute("userVO")).getMember_id();
		//나의 플레이팅 출력
		List<Tbl_plating> myplating_list = mapper.platingView(member_id);
		if(myplating_list != null) {
			session.setAttribute("my_plating_list", myplating_list);			
			System.out.println("나의 플레이팅 출력 성공");
		}
		//나의 재료 출력
		List<Tbl_ingredient> ingredient_list = mapper.ingreView(member_id);
		if(ingredient_list != null) {
			session.setAttribute("ingredient_list", ingredient_list);			
			System.out.println("나의 재료 출력 성공");
		}
		return "mypage2";
	}
	
	//상세페이지의 별점 출력
	@RequestMapping("/detail.do")
	public String detail(@RequestParam("plating_seq") int plating_seq, Model model) { 
		
		int rating = mapper.ratingView(plating_seq);
		System.out.println("별점출력");
		
		Tbl_plating platingVO = mapper.plating_detail(plating_seq);
		model.addAttribute("rating",rating);
		//객체 바인딩
		model.addAttribute("platingVO", platingVO);
		
		Tbl_reco_goods goods_picture = mapper.goodsView(plating_seq);
		model.addAttribute("goods_picture", goods_picture);
		
		//upload성공: 우선 디테일페이지로 이동
		return "detailpage"; 
	}
	
	
}
