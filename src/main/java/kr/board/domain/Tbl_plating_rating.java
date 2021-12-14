package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_plating_rating {

	private int pic_seq;  //사진 순번
	private int my_pic1_point; //사진1점수
	private int my_pic2_point; //사진2점수
	private int my_pic3_point; //사진3점수
	private int my_pic4_point; //사진4점수
	private int my_pic5_point; //사진5점수
	private int my_pic6_point; //사진6점수
	private int my_pic7_point; //사진7점수
	private int my_pic8_point; //사진8점수
	private int my_pic9_point; //사진9점수
	private int my_pic10_point; //사진10점수
	private Timestamp reg_date;  //등록일자
	private int plating_seq; //플레이팅 순번
}
