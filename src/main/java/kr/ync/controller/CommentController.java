package kr.ync.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.domain.CommentPageDTO;
import kr.ync.domain.CommentVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.ReplyPageDTO;
import kr.ync.domain.ReplyVO;
import kr.ync.service.CommentService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/jcw/comment/*")
@PreAuthorize("isAuthenticated()")
public class CommentController {
	@Autowired
	private CommentService service;
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/create")
	public String create(Criteria cri,CommentVO comment,RedirectAttributes rttr) {
		log.info(comment);
		System.out.println(comment);
		service.create(comment);
		return "redirect:/jcw/board/view"+cri.getListLink()+"&idx="+comment.getBoard_idx();
	}
	
	@GetMapping(value = "/pages/{board_idx}/{page}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<CommentPageDTO> getList(@PathVariable("page") int page, @PathVariable("board_idx") Integer board_idx,Model model) {
		
		
		Criteria cri = new Criteria(page, 10);
		int total=service.getTotal(board_idx);
		log.info("get Reply List bno: " + board_idx);
		
		log.info("cri:" + cri);
		log.info(service.getListPage(cri, board_idx));
		
		return new ResponseEntity<>(service.getListPage(cri, board_idx), HttpStatus.OK);
	}
	
	@PreAuthorize("principal.username == #comment.writer")
	@RequestMapping(method = RequestMethod.DELETE ,value = "/delete/{idx}")
	public ResponseEntity<String> deleteComment(@RequestBody CommentVO comment,@PathVariable("idx")int idx) {
		log.info("delete"+idx);
		System.out.println(idx);
		return service.delete(idx)==1
				?new ResponseEntity<>("success", HttpStatus.OK)
				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
				
	}
	
	@GetMapping(value="/get/{idx}" ,produces={MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<CommentVO> get(@PathVariable("idx") int idx){
		
		log.info("get:"+idx);
		return new ResponseEntity<>(service.get(idx),HttpStatus.OK);
	}
	
	@PreAuthorize("principal.username == #comment.writer")
	@RequestMapping(method= {RequestMethod.PUT,RequestMethod.PATCH},value="/modify/{idx}",consumes="application/json",produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@RequestBody CommentVO comment,@PathVariable("idx") int idx){
		log.info("modify"+comment);
		return service.modify(comment)==1
				?new ResponseEntity<>("success",HttpStatus.OK)
				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
