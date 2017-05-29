package jspexp.c01_mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspexp.z04_member.MemberDAO;
import jspexp.z04_member.MemberDTO;

public class HomeworkRechargeService implements Homework0529Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int calPoint = Integer.parseInt(request.getParameter("calPoint"));
		MemberDAO dao = MemberDAO.getInstance();
		HttpSession httpSession = request.getSession();
		MemberDTO dto = (MemberDTO) httpSession.getAttribute("member");
		dto.setPoint(dto.getPoint()+calPoint);
		int result = dao.updateMember(dto);
		System.out.println(result>0? "포인트 수정 성공":"포인트 수정 실패");
	}

}
