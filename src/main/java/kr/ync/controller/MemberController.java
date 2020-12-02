package kr.ync.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.domain.CommentPageDTO;
import kr.ync.domain.Criteria;
import kr.ync.domain.MemberVO2;
import kr.ync.service.MemberService;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("jcw/member/*")
@PreAuthorize("permitAll")
@Log4j
public class MemberController {
	@PreAuthorize("isAnonymous()")
	@GetMapping(value="/create_form")
	public String create_form(Locale locale, Model model) {

		return "create_form";
	}
	
	@Autowired
	MemberService service;
	
	@Autowired
	private PasswordEncoder pwencoder;
	
	@PreAuthorize("isAnonymous()")
	@RequestMapping(value = "/create",method = RequestMethod.POST)
	public String create(MemberVO2 member,RedirectAttributes rttr) {
		log.info("member:"+member);
		member.setUserpw(pwencoder.encode(member.getUserpw()));
		int result=service.create(member);
		if(result>0) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/customLogin";
	}
	
	@GetMapping(value = "/check/{userid}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<Integer> getList(@PathVariable("userid") String userid,Model model) {
		log.info("idcheck:"+userid);
		

		return new ResponseEntity<>(service.getCount(userid), HttpStatus.OK);
	}

	
}
