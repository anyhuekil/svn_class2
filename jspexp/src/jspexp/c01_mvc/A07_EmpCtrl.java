package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.z02_vo.Emp;

/**
 * Servlet implementation class A06_EmpCtrl
 */
@WebServlet(name = "emplogin", urlPatterns = { "/emplogin" })
public class A07_EmpCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A08_EmpService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A07_EmpCtrl() {
        super();
        service = new A08_EmpService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
//		1. 요청
		String ename=request.getParameter("ename")!=null?request.getParameter("ename"):"";
		String empno=(request.getParameter("empno")!=null&&
				!request.getParameter("empno").equals(""))
				?request.getParameter("empno"):"0";
		
//		2. 모델
		// 요청데이터 VO 입력
		Emp sch= new Emp();
		sch.setEname(ename);
		sch.setEmpno(new Integer(empno));
		// Service단에 넘겨서 가져옮
		Emp emp = service.getEmp(sch);
		request.setAttribute("emp",emp);

		//		3. view
		String page="/c01_mvc/a07_empLogin.jsp";
		if(emp!=null) 
			page="/c01_mvc/a08_empMain.jsp";
				
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
