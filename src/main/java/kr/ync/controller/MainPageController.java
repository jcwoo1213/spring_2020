package kr.ync.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ync.domain.BoardVO2;
import kr.ync.domain.NoticeVO;
import kr.ync.service.MainPageService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/jcw/*")
@PreAuthorize("isAuthenticated()")
public class MainPageController {
	
	@Autowired
	MainPageService service;
	
	@GetMapping("")
	public String Mainpage(Model model) {
		List<NoticeVO> notice=service.getNotice();
		List<BoardVO2> board=service.getBoard();
		model.addAttribute("notice", notice);
		model.addAttribute("board", board);
		return"front/index";
	}
}
