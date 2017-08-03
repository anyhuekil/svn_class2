package springweb.i02_calen;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/calendar.do")
public class A01_CalenCtrl {
	
	@Autowired(required=false)
	private A02_CalenSrv service;
	// http://localhost:6080/springweb/calendar.do?method=init
	@RequestMapping(params="method=init")
	public String start(){	
		return "/i02_calen_jsp/a01_calendar";
	}
	// ajax..
	@RequestMapping(params="method=list")
	public ModelAndView ajaxlist(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pageJsonReport");
		System.out.println(service.list().size());
		mav.addObject("list", service.list());
		return mav;
	}
	@RequestMapping(params="method=insert")
	public String jsonInsert(Calendar insert){
		System.out.println("µî·Ï!!!");
		System.out.println(insert.getStart());
		System.out.println(insert.getEnd());
		System.out.println(insert.getTitle());
		if(insert.getUrl()==null)
			insert.setUrl("");
		service.insert(insert);
		return "redirect:/calendar.do?method=list";
	}	
}
