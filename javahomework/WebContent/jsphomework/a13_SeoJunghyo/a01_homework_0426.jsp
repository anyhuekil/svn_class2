<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
</script>
<style type="text/css">
</style>
</head>
<body>
	<!--  
	숙제 0426
	데이터가 나오는 곳은 java변수로 출력
					Daily Schedule!!
	시간			계획내용			달성여부			기타
	9:30		수업시작			  달성			기분좋은 시작
	13:20	   점심시간메뉴		  달성			오늘은?
	16:30		프로젝트			  달성			이틀?		
-->
	<%
		String [] list = { "시간", "계획내용", "달성여부", "기타",
						   "9:30", "수업시간", "달성", "기분좋은 시작",
						   "13:20", "점심시간메뉴", "달성", "오늘은?",
						   "16:30", "프로젝트", "달성", "이틀?"
						  };
	%>
	<table>
		<% 
		for(int i=0; i<list.length/4; i++){
	%>
		<tr>
			<th><%=list[i*4] %></th>
			<th><%=list[i*4+1] %></th>
			<th><%=list[i*4+2] %></th>
			<th><%=list[i*4+3] %></th>
		</tr>
		<%
		}
	%>
	</table>

	<%
		String [][] player={
				{"NAME", "TEAM", "AGE", "LOC"},
				{"Ronaldo","Real Madrid", "32", "Portugal"},
				{"Messi", "Barcelona","29","Argentina"},
				{"Rooney","Manchester United","31","England"}	
		};
	%>
	<table>
		<% 
		for(int i=0; i<player.length; i++){
	%>
		<tr>
			<%	
		for(int j=0; j<4; j++){
	%>
			<th><%=player[i][j]%></th>
			<% 		
		}
	%>
		</tr>
		<%
		}
	%>
	</table>
</body>
</html>
