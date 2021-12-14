package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_plating {

	private int plating_seq; //플레이팅 순번
	private String plating_content; //플레이팅 내용
	private Timestamp reg_date; //등록 일자
	private String member_id; //등록 아이디
	private int like_count; //좋아요 수
	private int view_count; //조회수
	private String plating_pic1; //플레이팅 사진1
	private String plating_pic2; //플레이팅 사진2
	private String plating_pic3; //플레이팅 사진3
}
