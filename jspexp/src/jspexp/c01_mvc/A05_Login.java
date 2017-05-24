package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.z02_vo.Member;

/**
 * Servlet implementation class A05_Login
 */
@WebServlet(name = "login", urlPatterns = { "/login" })
public class A05_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A05_Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("login Controller 호출");
//		1. 요청
		String id= request.getParameter("id");
		String pwd= request.getParameter("pwd");
//		2. model호출후, 결과값
		boolean goMain=false;
		// id와 pass가 입력된 경우
		if(id!=null&&pwd!=null){
			// 유효한 id와 pass 입력한 경우
//			if(id.equals("himan")&&pwd.equals("7777")){
//				goMain=true;
//				// view단에 넘길 데이터
//			}
			A05_Service service = new A05_Service();
			Member vo = new Member();
			vo.setMemid(id);
			vo.setPass(pwd);
			// 유효한 경우..
			if(service.isValid(vo)){
				goMain=true;
			}
			// login을 한 경우에는 id값을 가지고 있음.
			request.setAttribute("id", id);
		}
//		3. View단 호출.
		System.out.println("id값?"+id);
		String page="/c01_mvc/a05_login.jsp";
		// id값이 없을 때, 초기 page호출
//		if(id==null||id.trim().equals("")){
//			page="/c01_mvc/a06_main.jsp";
//		}else{
//			page="/c01_mvc/a06_main.jsp";
//		}
		// 메인 페이지 갈 수 있을 때.
		if( goMain ){
			page="/c01_mvc/a06_main.jsp";
		}
		
		// id가 있을 때, DB check해서 model 처리
		System.out.println("이동할 page:"+page);
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

}
