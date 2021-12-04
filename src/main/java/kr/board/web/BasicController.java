package kr.board.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.domain.User;
import kr.board.mapper.BoardMapper;

@Controller
public class BasicController {
    
	@Autowired
	BoardMapper mapper;
	
	@RequestMapping("/")   // 127.0.0.1:8081/web/  -> board.jsp
	public String main() {
		return "board";
	}	
	@RequestMapping("/login.do")
	public String login(User vo, HttpSession session) { // userId, userPwd
		// 회원인증 mapper연동
		User userVO=mapper.login(vo);		
		// 회원인증 성공 여부에 따라서 세션(HttpSession)을 만들기
		if(userVO!=null) {
			session.setAttribute("userVO", userVO);			
		}
		return "board"; // /WEB-INF/views/board.jsp
	}
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate(); // 세션초기화
		return "board";
	}
}





