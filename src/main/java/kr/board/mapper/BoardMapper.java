package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.board.domain.Board;
import kr.board.domain.User;

// JDBC->MyBatis(mybatis.org) Framework (방법론)
@Mapper // ->생략가능
public interface BoardMapper {
  
   // CRUD - Method<--분리-->SQL
   //@Select("select * from board")
   public List<Board> boardList(); // 추상메서드 // <--->select * from board
   public void boardInsert(Board vo); // insert SQL~
   public Board boardContent(int idx); // select ~ where SQL~	   
   public void boardDelete(int idx); // delete SQL~
   public void boardUpdate(Board vo); // update SQL~
   
   @Update("update board set contents=#{contents} where idx=#{idx}")
   public void boardContentUpdate(Board vo); // update SQL~
   
   @Update("update board set title=#{title}, writer=#{writer} where idx=#{idx}")
   public void boardTitleWriterUpdate(Board vo);
   
   @Select("select * from user where userId=#{userId} and userPwd=#{userPwd}")
   public User login(User vo); // select SQL
   
}
