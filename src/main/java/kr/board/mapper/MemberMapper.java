package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.domain.Tbl_ingredient;
import kr.board.domain.Tbl_plating;
import kr.board.domain.User;
@Mapper 
public interface MemberMapper {

	//로그인
	public User login(User vo);  //select
	//회원가입
	public void register(User vo); //insert
	//메인페이지 열기
	public List<Tbl_plating> main(); //select
	public void ingre_upload(Tbl_ingredient ingredient);
}
