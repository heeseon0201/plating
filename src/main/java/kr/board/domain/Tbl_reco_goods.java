package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_reco_goods {

	private int reco_seq;
	private int plating_seq;
	private int goods_seq;
	private Timestamp reco_date;
	private String goods_name;
	private String goods_pic1;
	private String goods_pic2;
	private String goods_pic3;
	private String goods_pic4;
}
