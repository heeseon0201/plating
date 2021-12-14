package kr.board.domain;

import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class User {
	   private String member_id; // 회원 아이디
	   private String member_pwd; //회원 비밀번호
	   private String member_nickname; //회원 닉네임
	   private String member_name; //회원 이름
	   private String member_email; //회원 이메일
	   private String member_phone; //회원 연락처
	   private Timestamp member_date; //회원 가입일자
	   private String member_yesno; //관리자여부
	   // setter, getter -> Lombok(롬복)
}
