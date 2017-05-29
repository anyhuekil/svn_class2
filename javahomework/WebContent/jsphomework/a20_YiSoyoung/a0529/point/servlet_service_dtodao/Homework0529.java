package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "movie", urlPatterns = { "/movie" })
public class Homework0529 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Homework0529() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewPage = null;
		String com = request.getParameter("com");
		if(com.equals("login")){
			Homework0529Service service = new HomeworkLoginService();
			service.execute(request, response);
			viewPage = "f2_javabean/homework0529_main.jsp";
		}else if(com.equals("cal")){
			Homework0529Service service = new HomeworkCalService();
			service.execute(request, response);
			viewPage = "f2_javabean/homework0529_main.jsp";
		}else if(com.equals("recharge")){
			Homework0529Service service = new HomeworkRechargeService();
			service.execute(request, response);
			viewPage = "f2_javabean/homework0529_main.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
