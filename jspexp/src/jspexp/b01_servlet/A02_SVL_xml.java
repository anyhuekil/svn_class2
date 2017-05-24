package jspexp.b01_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// jspexp.b01_servlet.A02_SVL_xml
public class A02_SVL_xml extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public A02_SVL_xml() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body><h1>안녕하세요web.xml</h1></body></html>");
				
	}

}
