<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
	import = "java.net.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>justification</title>
		<style type="text/css">
		</style>
		<script src="${path}/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<body>
<%
	Cookie uptCookie=null;
	Cookie[] cookies = request.getCookies();
	if(cookies!=null&&cookies.length>0){
		for(Cookie c:cookies){
			if(!c.getName().equals("JSESSIONID")){
				System.out.println("쿠키이름:"+c.getName());
				// 쿠키 수정
				if(c.getName().equals("name1")){
					uptCookie = new Cookie("name1","uptCookie");
					response.addCookie(uptCookie);
				}
				// 쿠키 삭제..
				if(c.getName().equals("name2")){
					uptCookie = new Cookie("name2","delCookie");
					uptCookie.setMaxAge(0);
					response.addCookie(uptCookie);
					
				}
			}
		}
	}

%>


	</body>
</html>