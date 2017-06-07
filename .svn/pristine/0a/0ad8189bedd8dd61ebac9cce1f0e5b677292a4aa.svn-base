package springweb.a01_basic;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
// springweb.a01_basic.A02_ReqCtrl
// 1. annotation 선언
// 2. 조립기(dispatcher-servlet.xml)에 등록
@Controller
public class A02_ReqCtrl {
	
//	http://localhost:6080/springweb/reqexp01.do
//	http://localhost:6080/springweb/reqexp01.do?greet1=hi!!
//	http://localhost:6080/springweb/reqexp01.do?greet1=hi!!&greet2=good day!!
//	http://localhost:6080/springweb/reqexp01.do?greet1=hi!!&greet2=good day!!&callNum=25
//	http://localhost:6080/springweb/reqexp01.do?callNum=25
//	?greet1=hi!!&greet2=good!!
	@RequestMapping("/reqexp01.do")
	public String requestCall(
			@RequestParam(value="greet1", defaultValue="초기인사!!")
								String greet01,
			@RequestParam(value="greet2", defaultValue="초기인사2")
								String greet02,
			@RequestParam(value="callNum", defaultValue="-1")
								int callNum01
						 ){
			System.out.println("요청값1:"+greet01);
			System.out.println("요청값2:"+greet02);
			System.out.println("요청값3(숫자):"+callNum01);
		
		return "a01_basic/a10_calling";//화면단 호출..
	}
	// 물건 구매 초기 화면 호출..
//	http://localhost:6080/springweb/buyForm.do
	@RequestMapping("/buyForm.do")
	public String buyForm(){
		return "a01_basic/a11_buyForm";
	}
	// pname=사과&price=2
	@RequestMapping(value="/reqBuy.do")
	public String requestBuy(
				@RequestParam(value="pname", defaultValue="")
				String prodName,
				@RequestParam(value="price", defaultValue="0")
				int price,
				@RequestParam(value="cnt", defaultValue="0")
				int cnt,
				Model d
			){
		d.addAttribute("showinfo","구매요청 물건이 없습니다!!");
		// 요청한 물건 명과 갯수가 있을 때
		if(!prodName.equals("")&&cnt>0){
			String msg="요청하신 물건은 "+prodName+"이고, "
					+ "단가는"+price+"원 이며,"
					+ cnt+"개로 총비용이  "+(price*cnt)+"원 입니다!";
			d.addAttribute("showinfo",msg);
		}
		
		return "a01_basic/a12_buyList";
	}
	// 요청 방식 처리
	// 1. get방식 주로 초기 화면 로딩시, 처리..
//	http://localhost:6080/springweb/calling.do
	@RequestMapping(value="/calling.do", method=RequestMethod.GET)
	public String methodExp(){
		return "/a01_basic/a13_getForm";
	}
	@RequestMapping(value="/calling.do", method=RequestMethod.POST)
	public String methodExp2(){
		return "/a01_basic/a14_postResult";
	}	
	
	
	
	
	
	
	
}










