<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspexp.z02_vo.Emp"
	import="jspexp.z01_database.A01_EmpDB"%>
<% request.setCharacterEncoding("UTF-8");
// proc 구분하는 요청값 받기.(upt/del)
String proc = request.getParameter("proc")!=null?request.getParameter("proc"):"";


// 요청된 값 받기..
/*if(request.getParameter("ename")!=null){
	ename = request.getParameter("ename");
}else{
	ename = "";
}*/
// 위 내용을 3항 연산자로 처리
// <!-- ename job sal comm deptno-->
String ename = (request.getParameter("ename")!=null)?request.getParameter("ename"):"";
String job = (request.getParameter("job")!=null)?request.getParameter("job"):"";
String mgr = (request.getParameter("mgr")!=null)?request.getParameter("mgr"):"0";
String sal = (request.getParameter("sal")!=null)?request.getParameter("sal"):"0";
String comm = (request.getParameter("comm")!=null)?request.getParameter("comm"):"0";
String deptno = (request.getParameter("deptno")!=null)?request.getParameter("deptno"):"0";
String empno = (request.getParameter("empno")!=null)?request.getParameter("empno"):"0";
// DTO/VO 객체로 변환
Emp dto = new Emp();
dto.setEname(ename);
dto.setJob(job);
dto.setMgr(new Integer(mgr));
dto.setSal(new Double(sal)); 
dto.setComm(new Double(comm));
dto.setDeptno(new Integer(deptno));
dto.setEmpno(new Integer(empno));

A01_EmpDB dao = new A01_EmpDB();

if(proc.equals("upt")){ //DB 수정 메서드에 전달.
	dao.updateEmp(dto);
}
if(proc.equals("del")){ //DB 삭제 메서드에 전달.
	dao.deleteEmp(dto.getEmpno());
}


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>17.05.</title>
<style type="text/css">
</style>
<script src="/jspexp/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			// 이전 page에서 넘겨온 proc에 따라서, msg와 이동할 페이지 다른 경우
			var proc="<%=proc%>";
			if(proc=="upt"){
				alert("수정 완료");
				// 상세 page로 이동 처리..
				$(location).attr("href","a06_empDetail.jsp?empno=<%=dto.getEmpno()%>");
			}
			if(proc=="del"){
				alert("삭제 완료");
				$(location).attr("href","a03_schEmpList.jsp");				
			}
			
			$(document).ready(function(){
				
			})
		</script>
</head>
<body>

</body>
</html>
