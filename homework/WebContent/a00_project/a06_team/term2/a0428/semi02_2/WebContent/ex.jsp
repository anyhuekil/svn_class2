<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
%>
<%@ page import = "java.sql.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	});
</script>
</head>

<body>

<%



Connection conn = null;                                        // null로 초기화 한다.



try{

	String url = "jdbc:oracle:thin:@localhost:1521:xe";




	Class.forName("oracle.jdbc.driver.OracleDriver");

	conn = DriverManager.getConnection(url,"scott","tiger");

	out.println("제대로 연결되었습니다.");                            // 커넥션이 제대로 연결되면 수행된다.



}catch(Exception e){                                                    // 예외가 발생하면 예외 상황을 처리한다.

e.printStackTrace();

}

%>




</body>
</html>
