package com.zentlbug.ezen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zentlbug.ezen.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	//1. 조회(전체, 단건)
		//1-1 전체조회(GET)
			//필수 파라미터 : X
			//옵션 파라미터 : 페이지, 검색어 등
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String board() {
		// 데이터 조호;
		return "board/board";
	}

		//1-2 단건조회(GET)
			//필수 파라미터 : 글번호
			//옵션 파라미터 : 글번호
	@RequestMapping(value="/{bno}", method=RequestMethod.GET)
	public String post(@PathVariable("bno") int bno) {
		return "board/post";
	}
	//2. 작성
		//2-1. 작성화면(GET)
			//필수 파라미터 : X
			//옵션 파라미터 : X
	@GetMapping("/post")
	public String write() {
		return "board/write";
	}
		//2-2. 작성 처리(POST)
			//필수 파라미터 : 게시글 정보
			//옵션 파라미터 : X
	@PostMapping("/post")
	
	//postMapping에서 requestParam은 사용금지(?bno=3)
	//post요청이 성공하면 반드시 리다이렉트 시켜야한다. 실패해도 리다이렉트 되어야한다.
	//post페이지에 머물게 되면 새로고침 했을때 메서드 안에 있는 코드가 계속 실행된다.
	//PRG패던이라고 한다.
	public String writeOk(BoardVO vo) {
		return "redirect:/board/"+vo.getBno();
	}
	//3. 수정
		//3-1. 수정 화면(GET)
			//필수 파라미터 : 글번호
		//3-2. 수정 처리(POST, PUT)
			//필수 파라미터 : 게시글 정보
			//옵션 파라미터 : X
	//4. 삭제
		//4-1. 삭제 처리(POST, DELETE)
			//필수 파라미터 : 글번호
			//옵션 파라미터 : X
	@PostMapping("/delete/{bno}")
	public String delete(@PathVariable int bno) {
		//bno에 해당하는 게시글 삭제
		return "redirect:/board";
	}
}
