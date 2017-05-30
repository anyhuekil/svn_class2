<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*, java.util.*"
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
		<script src="${path}/com/jquery.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$.getJSON('item.json', function(data, status) {
					//alert(data.length+":"+data[0].name);
					var show="<tr><td>아이디</td><td>이름</td><td>가격</td><td>설명</td></tr>";
					$("#treeData").append(show);
					
					$.each(data,function(){
						show="<tr><td>"+this.id+"</td><td>"+this.name+
						"</td><td>"+this.price+"</td><td>"+this.description+"</td></tr>";
						$("#treeData").append(show);
					});
					
					
			    });
			})
		</script>
	</head>
	<body>
  <table id="treeData" border></table>
	</body>
</html>