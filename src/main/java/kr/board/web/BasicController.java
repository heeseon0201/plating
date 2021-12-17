package kr.board.web;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.mysql.cj.Session;

import kr.board.domain.Tbl_ingredient;
import kr.board.domain.Tbl_plating;
import kr.board.domain.User;
import kr.board.mapper.BoardMapper;
import kr.board.mapper.MemberMapper;
import kr.board.mapper.MypageMapper;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class BasicController {
	private final MypageMapper mypageMapper;

	private final String filePath = "C:\\test\\steak\\";

	@Autowired
	MemberMapper mapper;

	// 회원가입 페이지 열기
	@GetMapping("/join.do")
	public String join() {
		return "join";
	}

	// 로그인
	@RequestMapping("/login.do")
	public String login(User vo, HttpSession session) {
		User userVO = mapper.login(vo);
		// 회원인증 성공 여부에 따라서 세션(HttpSession)을 만들기
		if (userVO != null) {
			session.setAttribute("userVO", userVO);
			System.out.println("로그인 성공");
		}
		return "login";
	}

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate(); // 세션초기화
		return "login";
	}

	// 실제 회원가입
	@PostMapping("/join.do")
	public String register(User vo, HttpSession session) {
		mapper.register(vo);
		session.setAttribute("userVO", vo);
		return "redirect:/";
	}

	// 메인 페이지 열기
	@RequestMapping("/main.do")
	public String main(HttpSession session) {
		List<Tbl_plating> plating_list = mapper.main();
		if (plating_list != null) {
			session.setAttribute("plating_list", plating_list);
			System.out.println("플레이팅 모두 출력 완료");
		}
		// 메인페이지를 뷰단으로 이동
		return "main";

	}

	// 파일 전송 테스트
	@PostMapping("/fileupload.file")
	public String plating_test(@RequestParam MultipartFile file, HttpSession session) {
		String extension = FilenameUtils.getExtension(file.getOriginalFilename());

		// 실제 저장될 파일이름
		// UUID : 랜덤 문자열 생성
		String newFileName = UUID.randomUUID() + "." + extension;

		System.out.println("파일 이름 : " + file.getOriginalFilename());
		System.out.println("파일 크기 : " + file.getSize());
		// 데이터 베이스에 정보를 저장하는 건
		// 이렇게 file의 get 메소드를 활용해 필요한 정보들을 가져오고
		// 그걸 DTO에 담아 insert하면 된다.
		// 간단한거니 후의 과정은 생략하고 파일로 서버에 저장하는 걸 보자면

		// 파일 저장
		try (
				// 윈도우일 경우
				FileOutputStream fos = new FileOutputStream(filePath + newFileName);
				// 파일 저장할 경로 + 파일명을 파라미터로 넣고 fileOutputStream 객체 생성하고
				InputStream is = file.getInputStream();) {
			// file로 부터 inputStream을 가져온다.

			int readCount = 0;
			byte[] buffer = new byte[1024];
			// 파일을 읽을 크기 만큼의 buffer를 생성하고
			// ( 보통 1024, 2048, 4096, 8192 와 같이 배수 형식으로 버퍼의 크기를 잡는 것이 일반적이다.)

			while ((readCount = is.read(buffer)) != -1) {
				// 파일에서 가져온 fileInputStream을 설정한 크기 (1024byte) 만큼 읽고

				fos.write(buffer, 0, readCount);
				// 위에서 생성한 fileOutputStream 객체에 출력하기를 반복한다
			}
		} catch (Exception ex) {
			throw new RuntimeException("file Save Error");
		}

		// 저장된 플레이팅 사진 db 등록
		Tbl_plating plating = new Tbl_plating();
		
		//세션에서 로그인 객체 꺼내옴
		User member = (User) session.getAttribute("userVO");
		String member_id= member.getMember_id();
		
	
		//plating객체에 사진과 멤버 정보 등록
		plating.setPlating_pic("steak\\" + newFileName);
		plating.setMember_id(member_id);
		
		
		//plating객체 db에 저장
		mypageMapper.upload(plating);

		return "redirect:/main.do";
	}
	// 파일 전송 테스트
		@PostMapping("/ingrefileupload.file")
		public String ingre_test(@RequestParam MultipartFile file, HttpSession session) {
			String extension = FilenameUtils.getExtension(file.getOriginalFilename());

			// 실제 저장될 파일이름
			// UUID : 랜덤 문자열 생성
			String newFileName = UUID.randomUUID() + "." + extension;

			System.out.println("파일 이름 : " + file.getOriginalFilename());
			System.out.println("파일 크기 : " + file.getSize());
			// 데이터 베이스에 정보를 저장하는 건
			// 이렇게 file의 get 메소드를 활용해 필요한 정보들을 가져오고
			// 그걸 DTO에 담아 insert하면 된다.
			// 간단한거니 후의 과정은 생략하고 파일로 서버에 저장하는 걸 보자면

			// 파일 저장
			try (
					// 윈도우일 경우
					FileOutputStream fos = new FileOutputStream(filePath + newFileName);
					// 파일 저장할 경로 + 파일명을 파라미터로 넣고 fileOutputStream 객체 생성하고
					InputStream is = file.getInputStream();) {
				// file로 부터 inputStream을 가져온다.

				int readCount = 0;
				byte[] buffer = new byte[1024];
				// 파일을 읽을 크기 만큼의 buffer를 생성하고
				// ( 보통 1024, 2048, 4096, 8192 와 같이 배수 형식으로 버퍼의 크기를 잡는 것이 일반적이다.)

				while ((readCount = is.read(buffer)) != -1) {
					// 파일에서 가져온 fileInputStream을 설정한 크기 (1024byte) 만큼 읽고

					fos.write(buffer, 0, readCount);
					// 위에서 생성한 fileOutputStream 객체에 출력하기를 반복한다
				}
			} catch (Exception ex) {
				throw new RuntimeException("file Save Error");
			}

			
		
			// 저장된 재료사진 db 등록
			Tbl_ingredient ingredient = new Tbl_ingredient();
		
			// 세션에서 로그인 객체 꺼내옴
			User member2 = (User)session.getAttribute("userVO");
			String member_id2 = member2.getMember_id();
			
			// ingredient객체에 사진과 멤버 정보등록
			ingredient.setIngre_pic("steak\\"+ newFileName);
			ingredient.setMember_id(member_id2);
			
		
			
			//plating객체 db에 저장
			mypageMapper.ingre_upload(ingredient);

			return "redirect:/main.do";
		}

}
