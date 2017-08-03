package springweb.a01_basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// springweb.a01_basic.A03_ComCtrl
@Controller
@RequestMapping("/callMethod.do")
public class A03_ComCtrl {
	@RequestMapping(method=RequestMethod.GET)
	public String methodExp(){
		return "/a01_basic/a13_getForm";
	}
	@RequestMapping(method=RequestMethod.POST)
	public String methodExp2(){
		return "/a01_basic/a14_postResult";
	}		

}
