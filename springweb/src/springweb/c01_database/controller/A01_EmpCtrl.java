package springweb.c01_database.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.c01_database.service.A01_EmpService;
import springweb.z01_dto.Emp;

@Controller
public class A01_EmpCtrl {
//	
	@Autowired(required=false)
	private A01_EmpService service;	
	
//	http://localhost:6080/springweb/emplist_my.do
	@RequestMapping("/emplist_my.do")
	public String empList(Emp sch, Model d){

		
		d.addAttribute("emplist", service.empList(sch));
		
		return "c01_database/a01_empList";
	}
	@RequestMapping("/emp_my.do")
	public String empDetail(@RequestParam(value="empno",
								defaultValue="0") int empno, Model d){
		System.out.println("상세화면 empno:"+empno);
		d.addAttribute("emp", service.empOne(empno));
		return "c01_database/a03_empDetail";
	}
	
	
//	empUpdate(Emp upt)
	@RequestMapping("/emp_upt.do")
	public String empUpdate(Emp upt){
		service.empUpdate(upt);
		return "forward:/emp_my.do";
	}
	
}








