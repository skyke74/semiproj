package com.semiproject.hotels;

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
		return "home";
	}
	
	@RequestMapping(value = "/login/", method = RequestMethod.GET)
	public String login(Model model) {
		return "login/login";
	}
	
	@RequestMapping(value = "/emp/", method = RequestMethod.GET)
	public String emp(Model model) {
		return "emp/help";
	}
	@RequestMapping(value = "/intro/", method = RequestMethod.GET)
	public String intro(Model model) {
		return "intro/travle";
	}
}
