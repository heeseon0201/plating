package kr.board.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class User {
   private String userId; // <----> user_id : DB(User table)
   private String userName;
   private String userPwd;
   // setter, getter -> Lombok(롬복)
   
}
