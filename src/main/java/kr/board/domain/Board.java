package kr.board.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {		
	    private int idx; // 번호
	    private String userId; // 아이디
	    private String title; // 제목
	    private String contents; // 내용
	    private String writer; // 작성자 <-- userName
	    private String indate; // 작성일
	    private int count; // 조회수
}
