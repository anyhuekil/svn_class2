package javahomework.a10_parkyunha.com.emp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmpSelectDAOServlet
 */
@WebServlet("/EmpSelectDAOServlet")
public class EmpSelectDAOServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpSelectDAOServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		response.setContentType("text/html charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		
		EmpDAO dao = new EmpDAO();		
		ArrayList<EmpDTO> list = dao.getAll();
		
//		EmpDTO searchEmp = new EmpDTO();
//		searchEmp.setEname("S");
		
		// TODO: Have to fix
		ArrayList<EmpDTO> customList = dao.search("S", " ");
		
		for(EmpDTO dto : list) {
			out.print(dto.getEmpno()
					+", "+dto.getEname()
					+", "+dto.getJob()
					+", "+dto.getSal()
					+"<br>");
		}
		
		out.print("<br>----------------------------<br>");
		
		for(EmpDTO dto : customList) {
			out.print(dto.getEmpno()
					+", "+dto.getEname()
					+", "+dto.getJob()
					+", "+dto.getSal()
					+"<br>");
		}
		
		
		
		
		
	}

}
