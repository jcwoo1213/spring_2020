package kr.ync.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import kr.ync.domain.Criteria;

import kr.ync.domain.PageDTO;

import kr.ync.service.NoticeService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/jcw/notice/*")
@PreAuthorize("isAuthenticated()")
public class NoticeController {
	@Autowired
	private NoticeService service;
	
	@GetMapping("list")
	public String list(Criteria cri,Model model) {
		int total=service.getTotalCount(cri);
		log.info("cri:"+cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("list", service.ListWithPaging(cri));
		return "front/notice";
	}
	
	@GetMapping("view")
	public String view(Criteria cri,@RequestParam("idx") int idx,Model model) {
		log.info("notice_view"+idx);
		 service.updateCount(idx);
		model.addAttribute("notice",service.view(idx));
		model.addAttribute("cri", cri);
		return "front/notice_single";
	}

}
