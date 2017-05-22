<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();


%>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>justification</title>
		<style type="text/css">
		</style>
		<script src="<%=path%>/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
	</head>
<%
// 요청 객체에 객체 변수 할당..
Student st = new Student();
st.setName("이신영");
st.setKor(80);
request.setAttribute("student01", st);
%>	
	<body>
	<c:set var="stu01" value="${student01}"/>
	이름:${stu01.name}<br><!-- getName() -->
	국어:${stu01.kor}<br><!-- getKor() -->
	패스여부(60이상):${stu01.kor>=60}
	

	</body>
</html>







