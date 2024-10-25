package com.semiproject.hotels.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.semiproject.hotels.model.HotelsVo;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("path", "searchResults");
		return "home";
	}
	@GetMapping("/help")
	public String emp() {
		return "help/help";
	}
	@GetMapping("/intro")
	public String intro() {
		return "intro/travle";
	}
}
