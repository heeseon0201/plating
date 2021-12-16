package kr.board.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.cj.Session;

import kr.board.domain.Tbl_plating;
import kr.board.domain.User;
import kr.board.mapper.BoardMapper;
import kr.board.mapper.MemberMapper;

@Controller
public class BasicController {
    
	@Autowired
	MemberMapper mapper;
	
	//회원가입 페이지 열기
	@GetMapping("/join.do")
	public String join() {
		return "join"; 
	}
	
	//로그인
	@RequestMapping("/login.do")
	public String login(User vo, HttpSession session) { 
		User userVO = mapper.login(vo);		
		// 회원인증 성공 여부에 따라서 세션(HttpSession)을 만들기
		if(userVO!=null) {
			session.setAttribute("userVO", userVO);			
			System.out.println("로그인 성공");
		}
		return "login"; 
	}
	
	//로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
	session.invalidate(); // 세션초기화
	return "login";
	}
	
	//실제 회원가입
	@PostMapping("/join.do")
	public String register(User vo, HttpSession session) {
		mapper.register(vo);
		session.setAttribute("userVO", vo);	
	return "redirect:/"; 
	}
	
	//메인 페이지 열기
	@RequestMapping("/main.do")
	public String main(HttpSession session) {
		List<Tbl_plating> plating_list = mapper.main();
		if (plating_list != null) {
			session.setAttribute("plating_list", plating_list);
			System.out.println("플레이팅 모두 출력 완료");
		}
		//메인페이지를 뷰단으로 이동
		return "main";
	}
}





