package com.proj.hotels01;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model) {
		return "home";
	}
	@GetMapping("/dept/")
	public String dept(Model model) {
		RestTemplate template=new RestTemplate();
		String msg=template.getForObject("http://localhost:8080/api01/", String.class);
		model.addAttribute("list", msg);
		return "dept";
	}
}
