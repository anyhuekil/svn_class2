package jspexp.c01_mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspexp.z01_dao.EmpDAO;
import jspexp.z02_dto.Emp;

public class A08_Service {
	public void chk(HttpServletRequest request, HttpServletResponse response){
		EmpDAO dao = new EmpDAO();
		int empno = 0;
		try{
			empno = Integer.parseInt(request.getParameter("empno"));
		}catch (Exception e) {
			System.out.println("사번은 숫자예요");
		}
		String ename = request.getParameter("ename");
		Emp emp = dao.getEmp(empno, ename);
		if(emp!=null){
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("emp", emp);
		}
	}
}
