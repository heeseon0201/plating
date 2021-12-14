package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_my_plating {

	private int my_plating_seq;
	private String my_plating_subject;
	private String my_plating_content;
	private Timestamp reg_date;
	private String member_id;
}
