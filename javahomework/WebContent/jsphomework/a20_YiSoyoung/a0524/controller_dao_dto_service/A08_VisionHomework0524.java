package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/* DB 연동 확인 예제
 * vision 솔루션에 오신 것을 환영 합니다.
 * 이름과 사번을 입력 받아 사번을 체크하여 입력값이 DB에 있으면 @@@님 vision 솔루션
 *                                                인트라넷에 오신 것을 환영합니다
 *                                         없으면 초기화면
 */
@WebServlet(name = "/vision", urlPatterns = { "/vision" })
public class A08_VisionHomework0524 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public A08_VisionHomework0524() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		actionDo(request,response);
	}
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewPage = null;
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		System.out.println(com);
		String ename = request.getParameter("ename");
		if(ename==null){
			viewPage = "/c01_mvc/c06_visionHomework.jsp";
		}else{
			A08_Service service = new A08_Service();
			service.chk(request, response);
			viewPage = "/c01_mvc/c07_visionResult.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
