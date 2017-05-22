<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*"
%>
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
String []games={"가위","바위","보"};
request.setAttribute("team01", games[ (int)(Math.random()*3) ]);
request.setAttribute("team02", games[ (int)(Math.random()*3) ]);

Product p = new Product("사과",3000,2);
session.setAttribute("prod", p);

%>	
	<body>
		<h1>추억의 가위,바위,보</h1>
		<h2>player1:${team01}</h2>
		<h2>player2:${team02}</h2>
		<h1>물품현황</h1>
		<h2>물건명:${prod.name}</h2>
		<h2>가격:${prod.price}</h2>
		<h2>갯수:${prod.cnt}</h2>
		<a href="a05_scopeEl.jsp">다음 page!!</a>
	</body>
</html>