package springweb.c01_database.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.c01_database.service.A02_DeptService;
import springweb.z01_dto.Dept;

@Controller
public class A02_DeptCtrl {
//	
	@Autowired(required=false)
	private A02_DeptService service;	
	
//	http://localhost:6080/springweb/deptlist_my.do
	@RequestMapping("/deptlist_my.do")
	public String deptList(Model d){
		
		d.addAttribute("deptlist", service.deptList());
		
		return "c01_database/a02_deptList";
	}
	@RequestMapping("/deptDetail_my.do")
	public String deptOne(@RequestParam(value="deptno", defaultValue="0") int deptno,			
						Model d){
		
		d.addAttribute("dept", service.deptOne(deptno));
		
		return "c01_database/a04_deptDatail";
	}	
//	/deptUpdate.do
	@RequestMapping("/deptUpdate.do")
	public String deptUpdate(Dept upt){
		
		service.updateDept(upt);
		// list È­¸é´Ü
		return "redirect:/deptlist_my.do"; 
	}
	
	
	
	
	
	
}
