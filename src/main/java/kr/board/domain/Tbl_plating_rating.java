package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_plating_rating {

	private int rating_seq;
	private int my_pic_seq;
	private int my_pic1_point;
	private int my_pic2_point;
	private int my_pic3_point;
	private int my_pic4_point;
	private int my_pic5_point;
	private int my_pic6_point;
	private int my_pic7_point;
	private int my_pic8_point;
	private int my_pic9_point;
	private int my_pic10_point;
	private Timestamp reg_date;
}
