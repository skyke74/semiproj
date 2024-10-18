package com.hotels.api01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.hotels.api01.model.DeptDao;
import com.hotels.api01.model.DeptVo;
import com.hotels.api01.model.EmpDao;
import com.hotels.api01.model.HotelsDao;

@RestController
public class HomeController {
	@Autowired
	DeptDao deptDao;
	@Autowired
	EmpDao empDao;
	@Autowired
	HotelsDao hotelsDao;
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public ResponseEntity<?> home() {
//		return ResponseEntity.ok(deptDao.pullList());
//	}
	@GetMapping("/hotels/list/")
	public ResponseEntity<?> hotels() {
		return ResponseEntity.ok(hotelsDao.pullList());
	}
	@GetMapping("/hotels/search/{loc}")
	public ResponseEntity<?> search(@PathVariable String loc) {
		return ResponseEntity.ok(hotelsDao.searchList(loc));
	}
	@RequestMapping(value = "/dept/", method = RequestMethod.GET)
	public ResponseEntity<?> dept() {
		return ResponseEntity.ok(deptDao.pullList());
	}
	@RequestMapping("/emp/")
	public ResponseEntity<?> home() {
		return ResponseEntity.ok(empDao.pullList());
	}
}
