<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.A04_MemeberDao"
	import ="jspexp.z02_vo.Member"
%>
<% request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();

String proc = request.getParameter("proc");
String memid = request.getParameter("memid");
String pass = request.getParameter("pass");
System.out.println("proc:"+proc);
System.out.println("memid:"+memid);
System.out.println("pass:"+pass);
boolean hasData=false;
if(proc!=null&&proc.equals("login")){
	Member sch = new Member();
	sch.setMemid(memid);
	sch.setPass(pass);
	
	A04_MemeberDao dao = new A04_MemeberDao();
	Member vo = dao.getMember(sch);

	// 조회했을 때, 데이터가 없으면 null 
	if( vo !=null){
		hasData=true;
		// 데이터 있으므로..session 처리..
		session.setAttribute("member", vo);
	}	
}
boolean isLogout=false;
if(proc!=null&&proc.equals("logout")){
	session.invalidate();
	isLogout=true;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>웹페이지 연습</title>
		<style type="text/css">
		</style>
		<script src="<%=path%>/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			var hasData = <%=hasData%>;
			if(hasData){
				// 메인페이지 이동
				alert("로그인 성공!!");
				$(location).attr("href","a12_main.jsp");
			}else{
				// 로드인페이지 이동
				var isLogout=<%=isLogout%>;
				if(isLogout){
					alert("세션종료! 로그아웃\n다시 로그인 이동!");
				}else{
					alert("해당 id와 password로 \n인증이 실패했습니다");
				}
				$(location).attr("href","a10_login.jsp");
			}
			$(document).ready(function(){
			})
		</script>
	</head>
	<body>

	</body>
</html>
