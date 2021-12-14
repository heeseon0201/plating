package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_my_plating_pic {

	private int my_pic_seq;
	private int my_plating_seq;
	private String my_pic_1;
	private String my_pic_2;
	private String my_pic_3;
	private String my_pic_4;
	private String my_pic_5;
	private String my_pic_6;
	private String my_pic_7;
	private String my_pic_8;
	private String my_pic_9;
	private String my_pic_10;
	private Timestamp reg_date;
	
}
