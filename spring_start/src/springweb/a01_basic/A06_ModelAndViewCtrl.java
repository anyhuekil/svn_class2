package springweb.a01_basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import springweb.z01_dto.Product;
// springweb.a01_basic.A06_ModelAndViewCtrl
@Controller
public class A06_ModelAndViewCtrl {
	@RequestMapping("/mav.do")
	public ModelAndView mavexp(){
		ModelAndView mav = new ModelAndView();
		// model에 대한 처리..
		mav.addObject("how", "fine!!");
		mav.addObject("product", new Product("사과",3000));
		mav.setViewName("a01_basic/a23_mav");
		return mav;
	}
}
