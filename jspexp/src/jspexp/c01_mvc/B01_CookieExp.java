package jspexp.c01_mvc;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.z02_vo.Code;

/**
 * Servlet implementation class B01_CookieExp
 */
@WebServlet(name = "getcookie01", urlPatterns = { "/getcookie01" })
public class B01_CookieExp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B01_CookieExp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie cookie1 = new Cookie("name1","himan");
		Cookie cookie2 = new Cookie("name2",
						URLEncoder.encode("ȫ�浿","utf-8"));
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		
		Cookie[] cookies= request.getCookies();
		ArrayList<Code> cookList = new ArrayList<Code>();
		System.out.println("cookies.length:"+cookies.length);
		Code cd=null;
		if(cookies!=null&&cookies.length>0){
			for(Cookie c:cookies){
				if(!c.getName().equals("JSESSIONID")){
					cd = new Code();
					cd.setName(c.getName());
					cd.setValue(   
							URLDecoder.decode( c.getValue(),"utf-8")   
								);
					cookList.add(cd);
				}
			}
		}
		request.setAttribute("cooklist", cookList);
		
		String page="/d02_cookie/a03_mvcCookie.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);			
	}

}
