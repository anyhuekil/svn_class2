package jspexp.b01_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A04_SVL_Exp
 * 
 * urlPatterns : http://localhost:6080/jspexp/call03
 * 입력하면, 현재 jspexp.b01_servlet.A04_SVL_Exp 호출하겠습니다.
 * 
 * 
 */
@WebServlet(name = "call03", urlPatterns = { "/call03" })
public class A04_SVL_Exp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A04_SVL_Exp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body><h1>어노테이션 servlet호출</h1></body></html>");
			
	}

}
