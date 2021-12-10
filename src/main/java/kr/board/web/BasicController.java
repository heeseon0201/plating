package kr.board.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.domain.User;
import kr.board.mapper.BoardMapper;
import kr.board.mapper.MemberMapper;

@Controller
public class BasicController {
    
	@Autowired
	MemberMapper mapper;
	
	@RequestMapping("/")  //127.0.0.1:8081/web/ -> board.jsp
	public String main() {
		return "login";
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
	
	//회원가입
	@RequestMapping("/register.do")
	public String register(User vo, HttpSession session) {
	mapper.register(vo);
	return "login"; 
	}
}





