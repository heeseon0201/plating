package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_plating {

	private int plating_seq;
	private int food_seq;
	private String plating_content;
	private Timestamp reg_date;
	private String member_id;
}
