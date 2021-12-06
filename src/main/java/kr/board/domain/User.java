package kr.board.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class User {
	   private String member_id; // <----> user_id : DB(User table)
	   private String member_pwd;
	   private String member_nickname;
	   private String member_email;
	   private String member_phone;
	   private Date member_date;
	   private String member_yesno;
	   // setter, getter -> Lombok(롬복)
}
