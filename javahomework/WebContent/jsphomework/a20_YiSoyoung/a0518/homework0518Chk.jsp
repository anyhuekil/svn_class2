<%@page import="jspexp.z05_homework0518.ProductDTO"%>
<%@page import="jspexp.z05_homework0518.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap {
	width: 500px;
	border: 1px solid #187025;
	padding: 20px;
	margin: 20px auto;
}

table {
	width: 100%;
	background-color: #187025;
}

caption {
	font-size: 1.5em;
	color: #187025;
	margin-bottom: 30px;
	border-bottom: #187025;
	background-color: white;
}

td {
	padding: 10px;
	text-align: center;
	background-color: white;
}

td:FIRST-CHILD {
	width: 100px;
}

input[type=text] {
	border: 1px solid #187025;
}

input[type=submit] {
	background-color: #187025;
	color: white;
	padding: 10px 50px;
	font-weight: bold;
	margin: 10px;
	text-align: center;
}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
	<%	ProductDAO dao = new ProductDAO();
	String searchpName = request.getParameter("pname");
	int pno=0, ps=0;
	ProductDTO dto = dao.getProduct(searchpName);
	if(searchpName!=null && dto!=null){
		pno = dto.getPno();
		ps = dto.getPs();
	}
%>
	<div id="wrap">
		<table>
			<caption>재고 확인 결과</caption>
			<tr>
				<td>물건번호</td>
				<td>
					<%if(dto!=null) out.print(dto.getPno()); else out.print("결과없음");%>
				</td>
			</tr>
			<tr>
				<td>물건명</td>
				<td><%=searchpName %></td>
			</tr>
			<tr>
				<td>물건명</td>
				<td>
					<%if(dto!=null) out.print(dto.getPs());  else out.print("결과없음");%>
				</td>
			</tr>
			<tr>
				<td colspan="2"><button onclick="location='homework0518.jsp'">앞으로</button>
		</table>
	</div>
</body>
</html>
