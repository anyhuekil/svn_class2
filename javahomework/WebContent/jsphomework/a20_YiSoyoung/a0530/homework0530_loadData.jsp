<%@page import="jspexp.z05_homework0518.ProductDTO"%>
<%@page import="jspexp.z05_homework0518.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String searchName = request.getParameter("searchName");
	ProductDAO dao = new ProductDAO();
	ProductDTO dto = dao.getProduct(searchName);
	if(dto!=null){
		out.println(searchName + dto.getPs()+"개 재고");
	}else{
		out.println(searchName + "은 없는 제품입니다");
	}
%>
</body>
</html>