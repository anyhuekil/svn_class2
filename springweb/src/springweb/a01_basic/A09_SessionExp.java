package springweb.a01_basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import springweb.z01_dto.MoviePoint;

@Controller
@SessionAttributes("mvpoint")
public class A09_SessionExp {

	@ModelAttribute("mvpoint")
	public MoviePoint getMvPoint(){
		return new MoviePoint();
	}
	@RequestMapping("/mvlogin.do")
	public String movieLogin(@ModelAttribute("mvpoint") MoviePoint mp){
		String page="a01_basic/a31_mvlogin";
		// 포인차감 내용을 요청값으로 받았을 때.
		if(mp.getPoint()>0){
			// 기존 tot값에서 point값을 차감처리.
			mp.setTot(mp.getTot()-mp.getPoint());
			page="a01_basic/a32_mvpoint";
		// 	초기 로그인..
		}else if(mp.getName()!=null&&mp.getName().equals("홍길동")){
			// 초기 총 포인트 지정..
			mp.setTot(10000);
			page="a01_basic/a32_mvpoint";
		}
		
		return page;
	}
	
}
