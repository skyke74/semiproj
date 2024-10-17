package com.hotels.api01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hotels.api01.model.DeptDao;
import com.hotels.api01.model.DeptVo;

@Controller
public class HomeController {
	@Autowired
	DeptDao deptDao;
	
//	@RequestMapping("/")
//	public String home() {
//		return "home";
//	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ResponseEntity<?> home() {
		return ResponseEntity.ok(deptDao.pullList());
	}
	
	@PostMapping("/")
	public ResponseEntity<?> add(@ModelAttribute DeptVo bean){
		deptDao.addList(bean);
		return ResponseEntity.ok().build();
	}
}
