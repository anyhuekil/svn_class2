<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="project3.vo.Member" import="database.MemberDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% request.setCharacterEncoding("UTF-8");%>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<title>Insert title here</title>
</head>
<style>
</style>
<script src = "${path}/com/jquery-1.10.2.js"></script>
<body>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String memid = request.getParameter("memid");
String pass = request.getParameter("pass");
String hdPageChoice = request.getParameter("hdPageChoice");
boolean hasData = false;
boolean isLogout=false;
boolean regSuc = false;

Member mem = new Member(id, pwd, name, "user");
MemberDao dao = new MemberDao();

if(hdPageChoice!=null&&hdPageChoice.equals("login")){
	Member sch = new Member();
	sch.setMemid(memid);
	sch.setPass(pass);
	Member vo = dao.getMember(sch);

	if(vo != null){
		hasData = true;
		session.setAttribute("member", vo);
	}
}
if(hdPageChoice!=null&&hdPageChoice.equals("logout")){
	session.invalidate();
	isLogout=true;
}

if(hdPageChoice!=null&&hdPageChoice.equals("reg")){
	if(id!="" && pwd!="" && name!=""){
		regSuc = true;	
		dao.insertMember(mem);
	}else {
		System.out.println("error");
	}
}
%>
<script>
var hasData = <%=hasData%>;
var isLogout = <%=isLogout%>;
var regSuc = <%=regSuc%>;
if(!isLogout){
	if(hasData){
		alert("로그인");
	}
	$(location).attr("href","main.jsp");
}else{
	alert("로그아웃");
	$(location).attr("href","intro.jsp");
}
if(regSuc) {
	alert("회원가입 성공");
	$(location).attr("href","main.jsp");
}
</script>
</body>
</html>