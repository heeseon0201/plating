package kr.board.mapper;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Update;

import kr.board.domain.Board;
import kr.board.domain.Tbl_ingredient;
import kr.board.domain.Tbl_plating;


public interface MypageMapper {

	  public void upload(Tbl_plating vo); // 업로드 파일 메모 저장
	  public Tbl_plating platingView(String member_id); //나의 플레이팅 출력
	  public Tbl_ingredient ingreView(String member_id); //나의 재료 출력
	  public int ratingView(int plating_seq); //상세페이지에 별점 출력
}
