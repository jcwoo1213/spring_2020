package kr.ync.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ync.domain.CommentPageDTO;
import kr.ync.domain.Criteria;
import kr.ync.domain.MessagePageDTO;
import kr.ync.domain.MessageVO;
import kr.ync.service.CommentService;
import kr.ync.service.ContactService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/jcw/contact/*")
@PreAuthorize("isAuthenticated()")
public class ContactController {
	@Autowired
	ContactService service;
	@GetMapping("index")
	public String index(Model model,Principal principal) {
		//model.addAttribute("message",service.getList(principal.getName()));
		return "front/contact";
	}
	@PostMapping("create")
	public String create(MessageVO message) {
		System.out.println(message);
		service.create(message);
		return "redirect:/jcw/contact/index";
	}
	@GetMapping("view")
	public String view(Model model,int idx) {
		model.addAttribute("message", service.get(idx));
		model.addAttribute("answer", service.getanswer(idx));
		return "front/contact_view";
	}
	@GetMapping(value = "/listmessage/{page}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<MessagePageDTO> getList(@PathVariable("page") int page,Model model,Principal principal) {
		
		
		Criteria cri = new Criteria(page, 9);
		String writer=principal.getName();
		int total=service.getTotal(principal.getName());
		
//		log.info("get Reply List bno: " + board_idx);
//		
//		log.info("cri:" + cri);
//		log.info(service.getListPage(cri, board_idx));
		
		return new ResponseEntity<>(service.getListPage(cri, writer), HttpStatus.OK);
	}
}
