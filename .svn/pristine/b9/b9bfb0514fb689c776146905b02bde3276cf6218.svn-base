package springweb.a01_basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springweb.z01_dto.Exam;
import springweb.z01_dto.Person;
// springweb.a01_basic.A04_ModelAttriCtrl
@Controller
@RequestMapping("/modelExp.do")
public class A04_ModelAttriCtrl {
	
	@ModelAttribute("person")
	public Person getPerson(){
		return new Person("홍길동",25);
	}
	
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String start(@ModelAttribute("exam") Exam  ex){
		ex.setNum01((int)(Math.random()*9)+1);
		ex.setNum02((int)(Math.random()*9)+1);
		
		return "a01_basic/a20_calModel.jsp";
	}
	@RequestMapping(method=RequestMethod.POST)
	public String call(
				@ModelAttribute("exam") Exam  ex
			){
		System.out.println("num01:"+ex.getNum01());
		System.out.println("num02:"+ex.getNum02());
		System.out.println("inputData:"+ex.getInputdata());
		ex.setResult("오답");
		if(ex.getInputdata()==(ex.getNum01()*ex.getNum02())){
			ex.setResult("정답");
		}
		ex.setNum01((int)(Math.random()*9)+1);
		ex.setNum02((int)(Math.random()*9)+1);		
		
		
		return "a01_basic/a20_calModel.jsp";
	}

}
