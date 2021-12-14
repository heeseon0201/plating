package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_ingredient {

	private int ingre_seq;
	private int food_seq;
	private String ingre_name;
	private String ingre_content;
	private Timestamp reg_date;
	private String member_id;
	private String ingre_pic1;
	private String ingre_pic2;
	private String ingre_pic3;
	private String ingre_pic4;
	private String ingre_pic5;
	private String ingre_pic6;
	private String ingre_pic7;
	private String ingre_pic8;
	private String ingre_pic9;
	private String ingre_pic10;
}
