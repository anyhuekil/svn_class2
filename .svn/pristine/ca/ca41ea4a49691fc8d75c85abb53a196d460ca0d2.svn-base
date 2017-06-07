package springweb.a01_basic;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import springweb.z01_dto.Member;
import springweb.z01_dto.Product;
import springweb.z01_dto.Schedule;

@Controller
@SessionAttributes("schedule")
public class A08_SessionCtrl {
	
	@ModelAttribute("schedule")
	public Schedule getSchedule(){
		return new Schedule();
	}
	@RequestMapping("/input_schedule.do")
	public String inputSchedule(@ModelAttribute("schedule") Schedule sc){
		
		return "a01_basic/a29_recordSchedule";
	}
	
	
	@RequestMapping("/sess_login01.do")
	public String login(Member m, HttpSession ses){
		String page="a01_basic/a25_login";
		if( m.getId()!=null&&m.getId().equals("himan")&&
			m.getPass()!=null&&m.getPass().equals("7777")){
			
			ses.setAttribute("memember", m);
			
			page="a01_basic/a26_main";
		}
		return page;
	}
	@RequestMapping("/sess_cart01.do")
	public String getCart(Product prod, HttpServletRequest request){
		String page="a01_basic/a27_prod";
		if(prod.getPname()!=null){
			
			HttpSession sess=request.getSession();
			ArrayList<Product> carList=null;
			if(sess.getAttribute("cartList")==null){
				carList= new ArrayList<Product>();
			}else{
				carList= (ArrayList<Product>)sess.getAttribute("cartList");
			}
			carList.add(prod);
			sess.setAttribute("cartList", carList);
			page="a01_basic/a28_cartList";
		}
		
		return page;
	}
	
	
}
