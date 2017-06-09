package springweb.c01_database.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.c01_database.service.A02_DeptService;

@Controller
public class A02_DeptCtrl {
//	
	@Autowired(required=false)
	private A02_DeptService service;	
	
//	http://localhost:6080/springweb/deptlist_my.do
	@RequestMapping("/deptlist_my.do")
	public String empList(Model d){
		
		d.addAttribute("deptlist", service.deptList());
		
		return "c01_database/a02_deptList";
	}
}
