package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class B02_ShopCookie
 */
@WebServlet(name = "shop", urlPatterns = { "/shop" })
public class B02_ShopCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B02_ShopCookie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		1. 요청처리
		String product = request.getParameter("product");
		System.out.println("product:"+product);
		// 현재 가지고 있는 쿠키 갯수
		int cookieCnt=0;
		if( request.getCookies()!=null ){
			cookieCnt=request.getCookies().length;
		}
		
		if(product!=null&&!product.equals("")){
			// 쿠키의 이름옆에 numbering 처리
			Cookie cookie = new Cookie("product"+cookieCnt,product);
			response.addCookie(cookie);
		}
		
		
		String page="/d02_cookie/a10_shop.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);		
	}

}
