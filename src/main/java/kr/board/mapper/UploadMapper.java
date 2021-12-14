package kr.board.mapper;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Update;

import kr.board.domain.Board;
import kr.board.domain.Tbl_upload;

public interface UploadMapper {

	  public void upload(Tbl_upload vo); // 업로드 파일 메모 저장
}
