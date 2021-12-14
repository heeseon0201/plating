package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_picture {

	private int pic_seq;
	private int plating_seq;
	private String plating_pic1;
	private String plating_pic2;
	private String plating_pic3;
	private String plating_pic4;
	private String plating_pic5;
	private String plating_pic6;
	private String plating_pic7;
	private String plating_pic8;
	private String plating_pic9;
	private String plating_pic10;
	private Timestamp reg_date;
}
