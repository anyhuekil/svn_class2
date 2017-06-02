<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="project3.vo.Member" import="database.MemberDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% request.setCharacterEncoding("EUC-KR");%>
<fmt:requestEncoding value="EUC-KR"/>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="./js/javascript.js"></script>
<script src = "${path}/com/jquery-1.10.2.js"></script>
<title>Insert title here</title>
<style>
</style>
<script type="text/javascript">
<%

String hdPageChoice = request.getParameter("hdPageChoice");
String loserName = request.getParameter("loserName");
String[] width = request.getParameterValues("width");

System.out.println("hdPageChoice "+hdPageChoice);

if(width!=null){
	for(int i=0; i<width.length; i++){
		System.out.println("width"+i+" : "+width[i]);
		session.setAttribute("widthArr", width);
	}
}else{
	System.out.println("width -> null");
}

if(loserName != null && loserName != ""){
	session.setAttribute("loserName", loserName);
}
if(hdPageChoice.equals("first")){
	String[] playerName = request.getParameterValues("players");
	session.setAttribute("pn", playerName);
}
if(hdPageChoice.equals("second")){
	String hdGameChoice = request.getParameter("hdGameChoice");
	session.setAttribute("hdGameChoice", hdGameChoice);
}

%>
$(location).attr("href","main.jsp");
</script>
</head>
<body>
</body>
</html>