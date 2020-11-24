package kr.ync.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.domain.BoardVO;
import kr.ync.domain.BoardVO2;
import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;
import kr.ync.service.BoardService;
import kr.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/jcw/board/*")
@PreAuthorize("isAuthenticated()")
public class BoardController2 {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private BoardService service;

	@GetMapping("/create")
	@PreAuthorize("isAuthenticated()")
	public String create() {
		return "front/board_input";
	}

	@PreAuthorize("isAuthenticated()")
	@PostMapping("/create")
	public String register(MultipartFile[] uploadFile, BoardVO2 board, RedirectAttributes rttr) {
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
				board.setImg(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
		}
		log.info(board);
		System.out.println(board);
		log.info("register: " + board);
		service.create(board);
		return "redirect:/jcw/board/list";
	}
	@GetMapping("/list")
	public String list(Criteria cri, Model model) {

		log.info("list: " + cri);
		System.out.println(cri);
		
		// 게시판의 글은 지속적으로 등록, 삭제 되기에 매번 list를 호출 할때 total을 구해와야 한다. 
		int total = service.getTotal(cri);
		
		log.info("total: " + total);
		model.addAttribute("list", service.ListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		return "/front/board";
	}
	
//	@GetMapping("/list")
//	public String list(Model model) {
//
//
//		List<BoardVO2> list=service.List();
//		list.forEach(board -> log.info(board));
//		System.out.println(list);
//		model.addAttribute("list", list);
//		return "/front/board";
//	}
	@GetMapping("view")
	public String view(@RequestParam("idx") int idx,Model model,Criteria cri) {
		
		BoardVO2 board=service.view(idx);
		service.updateCount(idx);
		model.addAttribute("board", board);
		model.addAttribute("cri", cri);
		return"front/board_single";
	}
	@PreAuthorize("principal.username == #writer")
	@PostMapping("del")
	public String del(@RequestParam("idx") int idx,Criteria cri,@RequestParam("writer")String writer) {
		log.info(idx);
		System.out.println(idx);
		service.del(idx);
			
		
		return "redirect:/jcw/board/list"+cri.getListLink();
	}
	@PreAuthorize("principal.username == #writer")
	@PostMapping("modify_form")
	public String modify_form(@RequestParam("idx")int idx,Model model,Criteria cri,@RequestParam("writer")String writer) {
		BoardVO2 board=service.view(idx);
		System.out.println(board);
		model.addAttribute("board", board);
		model.addAttribute("cri", cri);
		System.out.println(cri);
		return"front/board_modify";
	}
	@PreAuthorize("principal.username == #board.writer")
	@PostMapping("modify")
	public String modify(MultipartFile[] uploadFile, BoardVO2 board,RedirectAttributes rttr,Criteria cri) {
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
				board.setImg(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
		}
		log.info(board);
		System.out.println(cri);
		System.out.println(board);
		service.modify(board);
		return "redirect:/jcw/board/view"+cri.getListLink()+"&idx="+board.getIdx();
	}

}
