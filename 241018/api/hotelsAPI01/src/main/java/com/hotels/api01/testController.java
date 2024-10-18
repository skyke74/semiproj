package com.hotels.api01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.hotels.api01.model.DeptDao;
import com.hotels.api01.model.DeptVo;
import com.hotels.api01.model.EmpDao;
import com.hotels.api01.model.HotelsDao;

@Controller
public class testController {
	@Autowired
	DeptDao deptDao;
	@Autowired
	EmpDao empDao;
	@Autowired
	HotelsDao hotelsDao;
	
	@RequestMapping("/")
	public String home(Model model) {
//		model.addAttribute("list",hotelsDao.searchList("¼­¿ï"));
		return "home";
	}
	
}
