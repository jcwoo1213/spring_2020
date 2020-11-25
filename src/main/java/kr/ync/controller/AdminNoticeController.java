package kr.ync.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.domain.BoardVO2;
import kr.ync.domain.Criteria;
import kr.ync.domain.NoticeVO;
import kr.ync.domain.PageDTO;
import kr.ync.service.AdminNoticeService;
import kr.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/notice/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminNoticeController {
	@Autowired
	private AdminNoticeService service;
	
	@GetMapping("list")
	public String list(Criteria cri,Model model) {
		log.info("cri:"+cri);
		int total=service.getTotalCount(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("list", service.ListWithPaging(cri));
		
		return "admin/notice";
	}
	@GetMapping("view")
	public String view(Criteria cri,@RequestParam("idx") int idx,Model model) {
		log.info("notice_view"+idx);
		 service.updateCount(idx);
		model.addAttribute("notice",service.view(idx));
		model.addAttribute("cri", cri);
		return "admin/notice_view";
	}
	@PostMapping("modify_form")
	public String modfiy_form(Criteria cri,@RequestParam("idx") int idx,Model model) {
		System.out.println("idx");
		model.addAttribute("cri", cri);
		model.addAttribute("notice", service.view(idx));
		return "admin/notice_modify";
	}
	@PreAuthorize("principal.username == #notice.writer")
	@PostMapping("modify")
	public String modify(NoticeVO notice,RedirectAttributes rttr,Criteria cri) {
		System.out.println(notice);
		rttr.addFlashAttribute("modify_result", service.modify(notice));
		return "redirect:/admin/notice/view"+cri.getListLink()+"&idx="+notice.getIdx();
	}
	@PreAuthorize("principal.username == #notice.writer")
	@PostMapping("del")
	public String delete(NoticeVO notice,RedirectAttributes rttr,Criteria cri) {
		
		rttr.addFlashAttribute("modify_result", service.del(notice.getIdx()));
		return "redirect:/admin/notice/list"+cri.getListLink();
	}
	@GetMapping("create")
	public String create() {
		return "admin/notice_input";
	}
	@PostMapping("create")
	public String create(NoticeVO notice) {
		service.create(notice);
		return "redirect:/admin/notice/list";
	}
}
