package jspexp.z01_dao;

import java.sql.*;
import java.util.ArrayList;

import jspexp.z02_dto.Dept;
import jspexp.z02_dto.Emp;
public class EmpDAO {
	public static final int SUCCESS = 1;
	public static final int FAIL = 0;
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public EmpDAO(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	private Connection setConn() throws ClassNotFoundException, SQLException{
			String conInfo="jdbc:oracle:thin:@localhost:1521:xe";
			con = DriverManager.getConnection(conInfo, "scott", "tiger");
			System.out.println("접속성공!!");
			return con;
	}
	public ArrayList<Emp> empList(){
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {
			con = setConn();
			stmt=con.createStatement();
			String sql="SELECT * FROM EMP ORDER BY EMPNO DESC";
			rs = stmt.executeQuery(sql);
			Emp emp=null; 
			while(rs.next()){
				emp = new Emp();
				emp.setEmpno(rs.getInt("empno"));
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
				list.add(emp);		
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close(); 
				if(con!=null) con.close(); 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public ArrayList<Emp> search(Emp sch){
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {
			setConn();
			stmt=con.createStatement();
			String sql="SELECT * "
					+ "FROM EMP "
					+ "WHERE ENAME LIKE '%"+sch.getEname()+"%' "
					+ "AND JOB LIKE '%"+sch.getJob()+"%'  ORDER BY EMPNO DESC";
			System.out.println(sql);
			rs = stmt.executeQuery(sql);
			Emp emp=null;
			while(rs.next()){
				emp = new Emp();
				emp.setEmpno(rs.getInt("empno"));
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
				list.add(emp);		
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(con!=null)con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public ArrayList<Emp> searchPrepared(Emp sch){
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {
			con = setConn();
			/*String sql="SELECT * "
					+ "FROM EMP "
					+ "WHERE ENAME LIKE '%'||?||'%' "
					+ "AND JOB LIKE '%'||?||'%' ";*/
			String sql="SELECT * "
					+ "FROM EMP "
					+ "WHERE ENAME LIKE ? "
					+ "AND JOB LIKE ?  ORDER BY EMPNO DESC";
			pstmt = con.prepareStatement(sql);
			//pstmt.setString(1, sch.getEname());
			//pstmt.setString(2, sch.getJob());
			pstmt.setString(1, "%"+sch.getEname()+"%");
			pstmt.setString(2, "%"+sch.getJob()+"%");
			System.out.println(sql);
			rs = pstmt.executeQuery();
			Emp emp=null;
			while(rs.next()){
				emp = new Emp();
				emp.setEmpno(rs.getInt("empno"));
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
				list.add(emp);		
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null){rs.close();}
				if(stmt!=null){stmt.close();}	
				if(con!=null){con.close();}				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public int insertEmp(Emp emp){
		int result = FAIL;
		String sql1 = "INSERT INTO EMP VALUES (EMP_SEQ.NEXTVAL, ?,?,?,?,?,?,?)";
		String sql2 = "INSERT INTO EMP VALUES (EMP_SEQ.NEXTVAL, ?,?,null,?,?,?,?)";
		//insert into emp values (emp_seq.nextval, '홍길동', 'superman', 7934, '17-05-10',5000,500,40);
		try {
			con = setConn();
			con.setAutoCommit(false);
			if(emp.getMgr()!=0){
				pstmt = con.prepareStatement(sql1);
				pstmt.setString(1, emp.getEname());
				pstmt.setString(2, emp.getJob());
				pstmt.setInt(3, emp.getMgr());
				pstmt.setDate(4, emp.getHiredate());
				pstmt.setDouble(5, emp.getSal());
				pstmt.setDouble(6, emp.getComm());
				pstmt.setInt(7, emp.getDeptno());
			}else{
				pstmt = con.prepareStatement(sql2);
				pstmt.setString(1, emp.getEname());
				pstmt.setString(2, emp.getJob());
				pstmt.setDate(3, emp.getHiredate());
				pstmt.setDouble(4, emp.getSal());
				pstmt.setDouble(5, emp.getComm());
				pstmt.setInt(6, emp.getDeptno());
			}			
			result = pstmt.executeUpdate();
			if(result>FAIL){
				System.out.println("사원입력성공");
				con.commit();
			}else{
				System.out.println("입력실패");
				con.rollback();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt!=null)	pstmt.close();	
				if(con!=null)	con.close();				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	public int empno(){
		String sql = "select max(empno)+1 from emp";
		int empno=0;
		try {
			con = setConn();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			rs.next();
			empno = rs.getInt(1);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null)	pstmt.close();	
				if(con!=null)	con.close();				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return empno;
	}
	public ArrayList<Emp> getMgr(){
		String sql = "select empno, ename from emp";
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {
			con = setConn();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				list.add(new Emp(empno, ename, null, 0, null, 0, 0, 0));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null)	pstmt.close();	
				if(con!=null)	con.close();				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public ArrayList<Emp> getMgr(int empnoNot){
		String sql = "select empno, ename from emp where empno!=?";
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {
			con = setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, empnoNot);
			rs = pstmt.executeQuery();
			while(rs.next()){
				int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				list.add(new Emp(empno, ename, null, 0, null, 0, 0, 0));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null)	pstmt.close();	
				if(con!=null)	con.close();				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public ArrayList<Dept> getDeptno(){
		String sql = "select deptno, dname from dept order by DEPTNO";
		ArrayList<Dept> list = new ArrayList<Dept>();
		try {
			con = setConn();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				int deptno = rs.getInt("deptno");
				String dname = rs.getString("dname");
				list.add(new Dept(deptno, dname, null));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null)	pstmt.close();	
				if(con!=null)	con.close();				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public void updateEmp(Emp emp){
		String sql1 = "UPDATE EMP SET ENAME=?, JOB=?, MGR=?, HIREDATE=?, SAL = ?, COMM=?, DEPTNO=? WHERE EMPNO=?";
		String sql2 = "UPDATE EMP SET ENAME=?, JOB=?, MGR=null, HIREDATE=?, SAL = ?, COMM=?, DEPTNO=? WHERE EMPNO=?";
		//update emp set ename='정지훈', job='연예인', mgr=7937, hiredate='2017/06/03', sal = 7000, comm=10, deptno=10 where empno=7941;;
		try {
			con = setConn();
			con.setAutoCommit(false);
			if(emp.getMgr()!=0){
				pstmt = con.prepareStatement(sql1);
				pstmt.setString(1, emp.getEname());
				pstmt.setString(2, emp.getJob());
				pstmt.setInt(3, emp.getMgr());
				pstmt.setDate(4, emp.getHiredate());
				pstmt.setDouble(5, emp.getSal());
				pstmt.setDouble(6, emp.getComm());
				pstmt.setInt(7, emp.getDeptno());
				pstmt.setInt(8, emp.getEmpno());
			}else{
				pstmt = con.prepareStatement(sql2);
				pstmt.setString(1, emp.getEname());
				pstmt.setString(2, emp.getJob());
				pstmt.setDate(3, emp.getHiredate());
				pstmt.setDouble(4, emp.getSal());
				pstmt.setDouble(5, emp.getComm());
				pstmt.setInt(6, emp.getDeptno());
				pstmt.setInt(7, emp.getEmpno());
			}
			int result = pstmt.executeUpdate();
			if(result>0){
				System.out.println("사원수정성공");
				con.commit();
			}else{
				System.out.println("입력수정실패");
				con.rollback();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(pstmt!=null)	pstmt.close();	
				if(con!=null)	con.close();				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public Emp getEmp(int empno){
		Emp emp = new Emp();
		String sql = "select * from emp where empno=?";
		try {
			con = setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, empno);
			rs = pstmt.executeQuery();
			if(rs.next()){
				emp.setEmpno(empno);
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs != null)  rs.close();
				if(pstmt!=null)	pstmt.close();	
				if(con!=null)	con.close();				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return emp;
	}
	public Emp getEmp(int empno, String ename){
		Emp emp = null;
		String sql = "select * from emp where empno=? and ename=?";
		try {
			con = setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, empno);
			pstmt.setString(2, ename);
			rs = pstmt.executeQuery();
			if(rs.next()){
				emp = new Emp();
				emp.setEmpno(empno);
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs != null)  rs.close();
				if(pstmt!=null)	pstmt.close();	
				if(con!=null)	con.close();				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return emp;
	}
	public int deleteEmp(int empno){
		int result = FAIL;
		String sql = "delete from emp where empno=?";
		try {
			con = setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, empno);
			result = pstmt.executeUpdate();
			if(result>FAIL){
				System.out.println(empno+"삭제");
				con.commit();
			}else{
				System.out.println(empno+"삭제 실패");
				con.rollback();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs != null)  rs.close();
				if(pstmt!=null)	pstmt.close();	
				if(con!=null)	con.close();				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
