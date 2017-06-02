package com.ac.ex;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FrontController {
	@RequestMapping(value = "/input", method = RequestMethod.GET)
	public String index(){
		return "a01_start/input.jsp";
	}
	@RequestMapping(value = "/result", method = RequestMethod.POST)
	public String result(HttpServletRequest request, Model model){
		int num1=0, num2=0, result=0;
		try{
			num1 = Integer.parseInt(request.getParameter("num1"));
			num2 = Integer.parseInt(request.getParameter("num2"));
			result = Integer.parseInt(request.getParameter("result"));
		}catch (NumberFormatException e) {
			System.out.println("텍스트가 아닌 숫자 형태로 입력하셔야죠"+e.getMessage());
			System.out.println("숫자가 아닌 텍스트로 입력하시면 0으로 처리해요");
		}
		if(num1+num2 == result){
			model.addAttribute("msg", "정답");
		}
		return "a01_start/result.jsp";
	}
}
