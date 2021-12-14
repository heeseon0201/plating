package kr.board.mapper;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Update;

import kr.board.domain.Board;
import kr.board.domain.Tbl_plating;


public interface UploadMapper {

	  public void upload(Tbl_plating vo); // 업로드 파일 메모 저장
}
