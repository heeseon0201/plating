package kr.board.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_ingredient {

	private int ingre_seq;  //재료 순번
	private String ingre_name;  //재료명
	private String ingre_content;  //재료 분석
	private Timestamp ingre_reg_date; //등록일자
	private String member_id; //등록자 아이디
	private String ingre_pic; //재료 이미지
}
