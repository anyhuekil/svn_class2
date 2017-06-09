package springweb.a01_basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A07_ForRedCtrl {
	// 사이트 호출
	@RequestMapping("/redirect01.do")
	public String redirect01(){
		return "redirect:http://www.naver.com";
	}
//	내부 controller 호출..
	@RequestMapping("/redirect02.do")
	public String redirect02(){
		
		return "redirect:/start.do";
	}
//	내부 자원 호출 jsp page 호출..
	@RequestMapping("/redirect03.do")
	public String redirect03(){
		return "redirect:/index";
	}
//	내부 자원 호출 1
//	http://localhost:6080/springweb/redEmp2.do?ename=F
//	redirect는 데이터값으로 요청값으로 넘기지 X	

	@RequestMapping("/redEmp.do")
	public String redEmp(){
		return "redirect:/emplist.do";
	}
//	내부 자원 호출 2
//	http://localhost:6080/springweb/forEmp.do?ename=F
//	요청값이 넘겨지는 것을 확인할 수 있다.
@RequestMapping("/forEmp.do")
	public String forEmp(){
		return "forward:/emplist.do";
	}	
	
	@RequestMapping("/callingSel.do")
	public String initCall(@RequestParam(value="sel", defaultValue="0") 
	                          int choiceNum ){
		String page="a01_basic/a24_initPage";
		if(choiceNum==1){
			page="redirect:/buyProduct.do";
		}else if(choiceNum==2){
			page="forward:/buyProduct.do";
		}
		
		return page;
	}	
	

}
