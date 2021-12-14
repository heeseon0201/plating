package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_reco_goods {

	private int reco_seq;  //추천 순번
	private int plating_seq; //플레이팅 순번
	private int goods_seq; //상품 순번
	private Timestamp reco_date; //추천 일자
	private String goods_name; //상품명
	private String goods_pic1; //상품사진1
	private String goods_pic2; //상품사진2
	private String goods_pic3; //상품사진3
	private String goods_pic4; //상품사진4
}
