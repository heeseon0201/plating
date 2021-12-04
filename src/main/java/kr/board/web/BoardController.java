package kr.board.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.board.domain.Board;
import kr.board.mapper.BoardMapper;

@RestController
public class BoardController { //open API->RestFull API
	// REST API 만들기=>method 
	@Autowired
	BoardMapper mapper;
	
	@RequestMapping("/boardListJson.do")
	public List<Board> boardListJson() {
		// 게시판전체리스트(JSON)
		List<Board> list=mapper.boardList();	
		return list; // JSON
		
	}	
	@PostMapping("/boardInsert.do")
	public void boardInsert(Board vo) {
		mapper.boardInsert(vo);
	}
	
	@PostMapping("/boardContentUpdate.do")
	public void boardContentUpdate(Board vo) { // idx, contents
		mapper.boardContentUpdate(vo);
	}
	
	@GetMapping("/boardDelete.do")
	public void boardDelete(int idx) {
		mapper.boardDelete(idx);
	}
	
	@PostMapping("/boardTitleWriterUpdate.do")
	public void boardTitleWriterUpdate(Board vo) {
		mapper.boardTitleWriterUpdate(vo);
	}
}
