package com.semiproject.hotels.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;

import com.semiproject.hotels.model.DeptVo;
import com.semiproject.hotels.model.HotelsVo;

@Controller
public class HotelsController {
	
	String url="http://localhost:8080/api01/";

	@GetMapping("/hotels/")
	public String hotels(Model model) {
		RestTemplate template=new RestTemplate();
		List<HotelsVo> list=template.getForObject(url+"hotels/list/", List.class);
		model.addAttribute("list", list);
		return "hotels";
	}
	
	@GetMapping("/searchResults")
	public String searchResult(Model model,String location) {
		System.out.println(location);
		RestTemplate template=new RestTemplate();
		List<HotelsVo> list=template.getForObject(url+"hotels/search/"+location, List.class);
		model.addAttribute("list", list);
		model.addAttribute("loc", location);
		return "searchResults";
	}
}
