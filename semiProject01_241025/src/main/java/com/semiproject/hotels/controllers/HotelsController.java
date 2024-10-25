package com.semiproject.hotels.controllers;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.client.RestTemplate;

import com.semiproject.hotels.model.DeptVo;
import com.semiproject.hotels.model.FavVo;
import com.semiproject.hotels.model.HotelsVo;

@Controller
public class HotelsController {
	
	String url="http://localhost:8080/api01/";
	
	@GetMapping("/searchResults")
	public String searchResult(Model model,String location,Date checkin,Date checkout,int guests) {
//		System.out.println(location);
		RestTemplate template=new RestTemplate();
		List<HotelsVo> list=template.getForObject(url+"hotels/search/"+location, List.class);
		model.addAttribute("list", list);
		model.addAttribute("loc", location);
		model.addAttribute("checkin", checkin);
		model.addAttribute("checkout", checkout);
		model.addAttribute("guests", guests);
		model.addAttribute("path", "searchResults");
		return "hotels/searchResults";
	}
	@GetMapping("/hotel_detail/{hotel_id}")
	public String results(HttpSession session,Model model,@PathVariable int hotel_id,String location,Date checkin,Date checkout,int guests) {
		model.addAttribute("loc", location);
		model.addAttribute("checkin", checkin);
		model.addAttribute("checkout", checkout);
		model.addAttribute("guests", guests);
		model.addAttribute("path", "hotel_detail/"+hotel_id);
		RestTemplate template=new RestTemplate();
		HotelsVo list=template.getForObject(url+"hotels/searchHotel/hotel_id="+hotel_id+",user_name="+session.getAttribute("user"), HotelsVo.class);
		model.addAttribute("list", list);
		return "hotels/hotel_detail";
	}
	@GetMapping("/hotel_detail/{hotel_id}/re")
	public String results(HttpSession session,Model model,@PathVariable int hotel_id) {
		model.addAttribute("path", "hotel_detail/"+hotel_id);
		RestTemplate template=new RestTemplate();
		HotelsVo list=template.getForObject(url+"hotels/searchHotel/hotel_id="+hotel_id+",user_name="+session.getAttribute("user"), HotelsVo.class);
		model.addAttribute("list", list);
		return "hotels/hotel_detail";
	}
	@GetMapping("/hotel_detail/resv")
	public String resv(Model model,String location,Date checkin,Date checkout,int guests) {
		model.addAttribute("loc", location);
		model.addAttribute("checkin", checkin);
		model.addAttribute("checkout", checkout);
		model.addAttribute("guests", guests);
		return "hotels/reserv";
	}
//	@GetMapping("/hotel_detail/resv")
//	public String resv(Model model) {
//		return "hotels/reserv";
//	}
	@GetMapping("/hotel_detail/fav")
	public String fav(Model model) {
		return "hotels/favorites";
	}
	@PostMapping("/hotel_detail/{hotel_id}/fav")
	public String addFav(HttpSession session,Model model,@PathVariable int hotel_id) {
		RestTemplate template=new RestTemplate();
		int result=template.getForObject(url+"hotels/addFav/user_name="+session.getAttribute("user")+",hotel_id="+hotel_id, int.class);
		return "redirect:./re";
	}
	@PostMapping("/hotel_detail/{hotel_id}/dis_fav")
	public String rmFav(HttpSession session,Model model,@PathVariable int hotel_id) {
		RestTemplate template=new RestTemplate();
		boolean result=template.getForObject(url+"hotels/rmFav/user_name="+session.getAttribute("user")+",hotel_id="+hotel_id, boolean.class);
		return "redirect:./re";
	}
}
