package springweb.h01_ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import springweb.c01_database.service.A01_EmpService;
import springweb.z01_dto.Emp;

@Controller
@RequestMapping("ajax.do")
public class A01_AjaxCtrl {
	@Autowired(required=false)
	private A01_EmpService service;	
// http://localhost:6080/springweb/ajax.do?method=ajaxForm
	@RequestMapping(params="method=ajaxForm")
	public String form(){
		return "h01_ajax/a01_form";
	}
	@RequestMapping(params="method=jsonList")
	public ModelAndView jsonList(Emp sch){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pageJsonReport");// 조립기에 선언한 json viewer
		mav.addObject("emplist", service.empList(sch));// view단
		
		return mav;
	}
}
