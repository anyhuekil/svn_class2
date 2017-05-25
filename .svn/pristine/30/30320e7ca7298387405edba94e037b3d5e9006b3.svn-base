package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A10_InClude
 */
@WebServlet(name = "tot01", urlPatterns = { "/tot01" })
public class A10_InClude extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A10_InClude() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String part=request.getParameter("part");
		String page="/d01_pg_mod/a11_tot.jsp";
		if(part!=null){
			if(part.equals("top")) page="/d01_pg_mod/a14_top.jsp";
			if(part.equals("left")) page="/d01_pg_mod/a12_top.jsp";
			if(part.equals("main")) page="/d01_pg_mod/a13_top.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);		
	}

}
