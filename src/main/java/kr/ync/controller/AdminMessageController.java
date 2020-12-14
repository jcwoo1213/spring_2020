package kr.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.domain.AnswerVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;
import kr.ync.service.AdminMessageService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/message/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminMessageController {
	@Autowired
	AdminMessageService service;
	
	@RequestMapping("list")
	public String list(Criteria cri,Model model) {
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, service.total()));
		return "admin/message";
	}
	
	@PostMapping("create")
	public String create(AnswerVO answer,RedirectAttributes rttr,Criteria cri) {
		int result=service.input_answer(answer);
		if(result>0) {
			rttr.addFlashAttribute("answer_result", "success");
		}else {
			rttr.addFlashAttribute("answer_result", "fail");
		}
		return "redirect:/admin/message/view?"+cri.getListLink()+"&idx="+answer.getMessage_idx();
	}
	
	@GetMapping("view")
	public String view(Criteria cri,@RequestParam("idx")int idx,Model model) {
		model.addAttribute("message", service.get(idx));
		AnswerVO answer=service.getanswer(idx);
		System.out.println(answer);
		model.addAttribute("answer",answer);
		
		
		model.addAttribute("cri", cri);
		return "admin/message_view";
	}
}
