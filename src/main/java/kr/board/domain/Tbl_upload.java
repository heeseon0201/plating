package kr.board.domain;

import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Tbl_upload {

	   private int upload_seq; //업로드 순번
	   private String upload_file; //업로드 파일
	   private Timestamp upload_date; //업로드 일자
	   private String member_id;  //업로드 사용자
	   private String upload_memo;  //업로드 메모
	   private int like_count;
}
