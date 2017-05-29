package jspexp.c01_mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspexp.z04_member.MemberDAO;
import jspexp.z04_member.MemberDTO;

public class HomeworkLoginService implements Homework0529Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDTO member = new MemberDTO();
		member.setId(request.getParameter("id"));
		member.setPw(request.getParameter("pw"));
		MemberDAO dao = MemberDAO.getInstance();
		MemberDTO dto = dao.getMember(member);
		if(dto!=null){
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("member", dto);
		}

	}

}
