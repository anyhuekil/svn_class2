package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.z02_vo.Product;

/**
 * Servlet implementation class A01_MVC
 */
@WebServlet(name = "mvc03", urlPatterns = { "/mvc03" })
public class A03_MVC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A03_MVC() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setAttribute("prod01", new Product("사과",3000,2));
		String jspPage="/c01_mvc/a03_mvc.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(jspPage);
		rd.forward(request, response);
		
		
	}

}
