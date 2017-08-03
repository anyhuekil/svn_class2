package springweb.a01_basic;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.z01_database.A01_EmpDB;
import springweb.z01_dto.Calculator;
import springweb.z01_dto.Code;
import springweb.z01_dto.Emp;
import springweb.z01_dto.Product;

// springweb.a01_basic.A05_ModelAttrCtrl
@Controller
public class A05_ModelAttrCtrl {
	
	@ModelAttribute("deptList")
	public ArrayList<Code> deptList(){
		ArrayList<Code> list = new ArrayList<Code>();
		list.add(new Code("10","인사"));
		list.add(new Code("20","재무"));
		list.add(new Code("30","it사업부"));
		list.add(new Code("40","총무"));
		return list;
	}
	@ModelAttribute("calcu")
	public ArrayList<Code> calList(){
		ArrayList<Code> list = new ArrayList<Code>();
		list.add(new Code("0"," + "));
		list.add(new Code("1"," - "));
		list.add(new Code("2"," * "));
		list.add(new Code("3"," / "));
		return list;
	}
	

//	화면단 호출..
//	http://localhost:6080/springweb/buyProduct.do
	@RequestMapping("/buyProduct.do")
	public String buyProduct(@ModelAttribute("prodmd")Product prod){
		
		prod.setTot(prod.getTot()+(prod.getPrice()*prod.getCnt()));
		
		return "a01_basic/a21_buyProduct";
	}
//	화면단 호출
//	http://localhost:6080/springweb/emplist.do
	@RequestMapping("/emplist.do")
	public String empList(@ModelAttribute("sch") Emp sch, Model d){

		if(sch.getEname()!=null){
			d.addAttribute("list", new A01_EmpDB().searchPre(sch));
		}
		return "a01_basic/a22_empList";
	}
//	계산기 화면 호출
//	http://localhost:6080/springweb/calcu.do
	@RequestMapping("/calcu.do")
	public String calcu(@ModelAttribute("cal") Calculator calc){
//		ex.setInputdata(inputdata);
		System.out.println("num01:"+calc.getNum01());
		System.out.println("calIdx:"+calc.getCalIdx());
		System.out.println("num02:"+calc.getNum02());
		int results[]={calc.getNum01()+calc.getNum02(),
				calc.getNum01()-calc.getNum02(),
				calc.getNum01()*calc.getNum02(),
				calc.getNum02()==0?0:calc.getNum01()/calc.getNum02()};
		calc.setResult(	results[ calc.getCalIdx() ]);
		
		return "a01_basic/a23_calcu";
	}
	
	
}



