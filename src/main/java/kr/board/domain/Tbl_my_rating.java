package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_my_rating {

	private int pic_seq;  //사진 순번
	private int my_pic_point; //사진1점수
	private Timestamp my_reg_date;  //등록일자
	private int plating_seq; //플레이팅 순번
}
