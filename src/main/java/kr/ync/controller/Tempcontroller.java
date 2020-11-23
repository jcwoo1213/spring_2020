package kr.ync.controller;

import java.util.Locale;

import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;
@RequestMapping("/jcw/*")
@Controller
@Log4j
@PreAuthorize("isAuthenticated()")
public class Tempcontroller {
	
	@GetMapping("/")
	public String home(Locale locale, Model model) {

		return "front/index";
	}
	@GetMapping("/blog")
	public String blog(Locale locale, Model model) {

		return "front/blog";
	}
	
	@GetMapping("/contact")
	public String contact(Locale locale, Model model) {

		return "front/contact";
	}
	@GetMapping("/about")
	public String about(Locale locale, Model model) {

		return "front/about";
	}
	@GetMapping("/single")
	public String single(Locale locale, Model model) {

		return "front/single";
	}
	@GetMapping("/logout")
	public String logout(Locale locale, Model model) {
		
		return"customLogout";
	}
	@GetMapping("/test")
	public String test() {
		return "get";
	}
}
