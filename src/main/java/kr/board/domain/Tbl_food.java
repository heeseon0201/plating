package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_food {

	private int food_seq;
	private String food_name;
	private Timestamp reg_date;
	private String member_id;
	private String food_recipe;
	private String food_video;
}
