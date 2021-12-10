package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.domain.User;
@Mapper 
public interface MemberMapper {

	//로그인
	public User login(User vo);  //select
	//회원가입
	public User register(User vo); //inser
}
