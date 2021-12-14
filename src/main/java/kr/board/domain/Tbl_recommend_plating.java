package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_recommend_plating {

	private int reco_seq;
	private int upload_seq;
	private int plating_seq;
	private Timestamp reg_date;
	private String member_id;
}
