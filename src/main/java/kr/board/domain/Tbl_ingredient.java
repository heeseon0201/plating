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
	private Timestamp reg_date; //등록일자
	private String member_id; //등록자 아이디
	private String ingre_pic1; //재료이미지1
	private String ingre_pic2; //재료이미지2
	private String ingre_pic3; //재료이미지3
	private String ingre_pic4; //재료이미지4
	private String ingre_pic5; //재료이미지5
	private String ingre_pic6; //재료이미지6
	private String ingre_pic7; //재료이미지7
	private String ingre_pic8; //재료이미지8
	private String ingre_pic9; //재료이미지9
	private String ingre_pic10; //재료이미지10
}
