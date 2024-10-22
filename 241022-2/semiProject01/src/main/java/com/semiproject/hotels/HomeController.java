package com.semiproject.hotels;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}
	@RequestMapping(value = "/searchResults", method = RequestMethod.GET)
	public String searchResult(Locale locale, Model model) {
		return "searchResults";
	}
	@RequestMapping(value = "/Results1", method = RequestMethod.GET)
	public String Result1(Locale locale, Model model) {
		return "Results1";
	}
	
	@RequestMapping(value = "/Order1", method = RequestMethod.GET)
	public String Order1(Locale locale, Model model) {
		return "Order1";
	}
	
	@RequestMapping(value = "/Find1", method = RequestMethod.GET)
	public String Find1(Locale locale, Model model) {
		return "Find1";
	}
	
	@RequestMapping(value = "/login/", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "login/login";
	}
	
	@RequestMapping(value = "/signup/", method = RequestMethod.GET)
	public String signup(Locale locale, Model model) {
		return "signup/signup";
	}
	
	@RequestMapping(value = "/mypage/", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		return "mypage/mypage";
	}
	
	@RequestMapping(value = "/emp/", method = RequestMethod.GET)
	public String emp(Locale locale, Model model) {
		return "emp/help";
	}
	@RequestMapping(value = "/intro/", method = RequestMethod.GET)
	public String intro(Locale locale, Model model) {
		return "intro/travle";
	}
	@RequestMapping(value = "/change", method = RequestMethod.GET)
	public String change(Locale locale, Model model) {
		return "change";
	}
}
