package springweb.c01_database.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.c01_database.service.A01_EmpService;

@Controller
public class A01_EmpCtrl {
//	
	@Autowired(required=false)
	private A01_EmpService service;	
	
//	http://localhost:6080/springweb/emplist_my.do
	@RequestMapping("/emplist_my.do")
	public String empList(Model d){
		
		d.addAttribute("emplist", service.empList());
		d.addAttribute("deptlist", service.deptList());
		
		return "c01_database/a01_empList";
	}
}
