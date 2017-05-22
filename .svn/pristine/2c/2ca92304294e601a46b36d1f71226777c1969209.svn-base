<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
import = "java.util.Enumeration"
%>
<% request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>17.05.</title>
		<style type="text/css">
		</style>
		<script src="/<%=path%>/com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				
			})
		</script>
	</head>
	<body>
<!-- 
pageContext 기본 객체
하나의 jsp 페이지와 매핑되는 객체
1. 다른 기본 객체 구하기.
	.getRequest() : 요청객체(request)를 구한다.
	.getResponse() : 응답객체(response)를 구한다.
	.getSession() : 세션객체(session)를 구한다.
	.getServletContext(): 어플리케이션(application)을 구한다.
	.getServletConfig():config 기본 객체를 구한다.
2. 속성 처리하기(set/getAttribute("속성"...))
3. 페이지 흐름 제어하기
4. 에러 데이터를 구하기

request 객체와 pageContext.getRequest()와 동일 여부 check
 -->
<%
HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
%>
<h1>pageContext.getRequest()와 request 동일 여부 확인!!</h1> 
<h2>동일?<%=(httpRequest==request)%></h2>
 
 
	</body>
</html>