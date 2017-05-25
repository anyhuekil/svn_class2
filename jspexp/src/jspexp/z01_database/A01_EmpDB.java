package jspexp.z01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jspexp.z02_vo.Emp;
// jspexp.z01_database.A01_EmpDB
public class A01_EmpDB {
	// field 선언
	// 1. Connection con : 연결 객체
	// 2. Statement stmt : 대화
//	      PreparedStatement pstmt
//	   3. ResultSet rs;  : 결과
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// 연결처리한 메서드 : 예외사항 위임처리
	private void setConn() throws ClassNotFoundException, SQLException{
//		1. driver메모리에 올리기
//		2. DriverManger.getConnection(url, id,pass)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// db드라이버종류(thin)@ip:port:sid
			String conInfo="jdbc:oracle:thin:@localhost:1521:xe";
			con = DriverManager.getConnection(conInfo, "scott", "tiger");
			System.out.println("정상 접속 성공!!");
	}
	// emp 테이블에 select * from emp통해서 가져오는 데이터를
	// ArrayList<Emp>로 가져옮
	// new A01_EmpDB().empList()
	public ArrayList<Emp> empList(){
		ArrayList<Emp> list = new ArrayList<Emp>();
//		1. 연결
		try {
			setConn();
//		2. 대화
			stmt=con.createStatement();
//			sql처리
			String sql="SELECT * FROM EMP ";
//			대화를 하고, 결과값(ResultSet)
			rs = stmt.executeQuery(sql);
//		3. 결과(select==> ResultSet, insert/update/delete ==> DB내 처리)
//			rs.next() : loop 블럭{}을 처리한 후에, 다음 row에 데이터가
//			            있는지 여부를 return true/false
//			rs.getXXXX("컬럼명") 컬럼명:sql문에 나타나는 title 컬럼명
//			                     database에  컬럼명X
//			1)  ArrayList<Emp>에 데이터를 담은 단위객체(Emp)를 추가
//			    Emp(생성, 데이터할당)  --> ArrayList<Emp> add
			Emp emp=null; // 단위 객체 선언
			// Emp emp 를 loop문 안에 선언하면 참조객체가 반복만큼 생겨 메모리
			// 부하발생
		    // Emp emp = new Emp(); loop문 밖에서 생성하고, loop문 안에 생성
			// 하지 않으면 같은 객체를 참조하기, 마지막 데이터를 데이터 건수만큼
			// 할당
			while(rs.next()){
				emp = new Emp();
				// emp.setEmpno()에  가져온 데이터(rs.getInt("empno"))
//				  할당함으로 empno 필드에 데이터를 저장
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
			// 수정, 삭제, 등록  시 ==> commit()
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// 수정,삭제, 등록  rollback()
			e.printStackTrace();
		}finally{
			
			// 자원 해제
			try {
				if(rs!=null){
					// ResultSet가 현재 메모리에 할당 되어 있다면.
					rs.close();
				}
				if(stmt!=null){
					stmt.close();
				}	
				if(con!=null){
					con.close();
				}				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	// 검색 메서드
	// input(Person p){
	//   
	//}
	// 메인 메서드
	// Person p = new Person();
	// p.name="홍길동"
	// input(p)
	public ArrayList<Emp> search(Emp sch){
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {
			setConn();
			stmt=con.createStatement();
			String sql="SELECT * \n"
					+ "FROM EMP  \n"
					+ "WHERE ENAME LIKE '%"+sch.getEname()+"%'  \n"
					+ "AND JOB LIKE '%"+sch.getJob()+"%' ";
			System.out.println(sql);
			rs = stmt.executeQuery(sql);
			Emp emp=null; // 단위 객체 선언
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// 수정,삭제, 등록  rollback()
			e.printStackTrace();
		}finally{
			// 자원 해제
			try {
				if(rs!=null){
					// ResultSet가 현재 메모리에 할당 되어 있다면.
					rs.close();
				}
				if(stmt!=null){
					stmt.close();
				}	
				if(con!=null){
					con.close();
				}				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	// 검색 메서드
	// 
	public ArrayList<Emp> searchPre(Emp sch){
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {
			setConn();

			String sql="SELECT * \n"
					+ "FROM EMP  \n" 
					+ "WHERE ENAME LIKE '%' || ? || '%'  \n"
					+ "AND JOB LIKE '%'||?||'%' \n"
					+ "ORDER BY EMPNO DESC ";
			System.out.println(sql);
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, sch.getEname()); //첫번째
			pstmt.setString(2, sch.getJob());//두번째
			
			rs = pstmt.executeQuery();
			Emp emp=null; // 단위 객체 선언
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// 수정,삭제, 등록  rollback()
			e.printStackTrace();
		}finally{
			// 자원 해제
			try {
				if(rs!=null){
					// ResultSet가 현재 메모리에 할당 되어 있다면.
					rs.close();
				}
				if(stmt!=null){
					stmt.close();
				}	
				if(con!=null){
					con.close();
				}				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
<<<<<<< .mine
	// 1개검색 메서드
||||||| .r193
	// 1���˻� �޼���
=======
	// 1�� �˻� �޼���   A01_EmpDB.getEmp(Emp sch)
	public Emp getEmp(Emp sch){
		Emp emp=null; 
		try {
			setConn();

			String sql="SELECT * \n"
					+ "FROM EMP  \n" 
					+ "WHERE empno =? \n"
					+ "AND ename =? \n";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, sch.getEmpno());
			pstmt.setString(2, sch.getEname());
			
			rs = pstmt.executeQuery();
			// ���� ��ü ����
			if( rs.next() ){
				emp = new Emp();
				emp.setEmpno(rs.getInt("empno"));
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// ����,����, ���  rollback()
			e.printStackTrace();
		}finally{
			// �ڿ� ����
			try {
				if(rs!=null){
					// ResultSet�� ���� �޸𸮿� �Ҵ� �Ǿ� �ִٸ�.
					rs.close();
				}
				if(pstmt!=null){
					pstmt.close();
				}	
				if(con!=null){
					con.close();
				}				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return emp;
	}	
	// 1���˻� �޼���
>>>>>>> .r256
	public Emp oneEmp(int empno){
		Emp emp=null; 
		try {
			setConn();

			String sql="SELECT * \n"
					+ "FROM EMP  \n" 
					+ "WHERE empno =? \n";
			System.out.println(sql);
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, empno);
			
			rs = pstmt.executeQuery();
			// 단위 객체 선언
			if( rs.next() ){
				emp = new Emp();
				emp.setEmpno(rs.getInt("empno"));
				emp.setEname(rs.getString("ename"));
				emp.setJob(rs.getString("job"));
				emp.setMgr(rs.getInt("mgr"));
				emp.setHiredate(rs.getDate("hiredate"));
				emp.setSal(rs.getDouble("sal"));
				emp.setComm(rs.getDouble("comm"));
				emp.setDeptno(rs.getInt("deptno"));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// 수정,삭제, 등록  rollback()
			e.printStackTrace();
		}finally{
			// 자원 해제
			try {
				if(rs!=null){
					// ResultSet가 현재 메모리에 할당 되어 있다면.
					rs.close();
				}
				if(pstmt!=null){
					pstmt.close();
				}	
				if(con!=null){
					con.close();
				}				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return emp;
	}

	// 입력메서드 만들기..
	public void insertEmp(Emp ins){
		// db 연결처리..
		try {
			con=A00_DB.conn();
			String sql="INSERT INTO EMP VALUES( EMP_SEQ.NEXTVAL,"
					+ "?,?,?,SYSDATE,?,?,?)";
			/* COMMIT
			 autocommit 옵션을 false사용하여 commit하지 하지 않으면 
			 트랜잭션 확정 처리되지 않도록 한다. setAutoCommit(false) 
			 * */
			con.setAutoCommit(false);
			pstmt=con.prepareStatement(sql);	
			pstmt.setString(1, ins.getEname());
			pstmt.setString(2, ins.getJob());
			pstmt.setInt(3, ins.getMgr());
			pstmt.setDouble(4, ins.getSal());
			pstmt.setDouble(5, ins.getComm());
			pstmt.setInt(6, ins.getDeptno());
			pstmt.executeUpdate();
			// 정상적으로 처리 되었을 때, commit
			con.commit();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			// 등록시, 예외 발생으로 전체 데이터 입력 취소
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally{
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	// 수정처리.
	public void updateEmp(Emp upt){
		try {
			con = A00_DB.conn();
			con.setAutoCommit(false);
			String sql="update emp      "+
						"   set ename=?,"+
						"	   job=?,   "+
						"	   mgr=?,   "+
						"	   sal=?,   "+
						"	   comm=?,  "+
						"	   deptno=? "+
						"where empno=?  ";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, upt.getEname());
			pstmt.setString(2, upt.getJob());
			pstmt.setInt(3,  upt.getMgr());
			pstmt.setDouble(4,  upt.getSal());
			pstmt.setDouble(5,  upt.getComm());
			pstmt.setInt(6,  upt.getDeptno());
			pstmt.setInt(7,  upt.getEmpno());
			pstmt.executeUpdate();
			con.commit();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally{
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	// 삭제처리.
	public void deleteEmp(int empno){
		
		try {
			con=A00_DB.conn();
			con.setAutoCommit(false);
			String sql="delete from emp "
			        	+ "where empno=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, empno);
			pstmt.executeUpdate();
			con.commit();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally{
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A01_EmpDB db = new A01_EmpDB();
		// 수정할 내용 DTO
		Emp dto= new Emp();
		dto.setEname("수지");
		dto.setJob("가수");
		dto.setMgr(7839);
		dto.setSal(8888);
		dto.setComm(888);
		dto.setDeptno(40);
		dto.setEmpno(7936);
//		db.insertEmp(dto); // 데이터 입력처리.
		db.updateEmp(dto); // 수정처리..
		System.out.println(db.empList().size());
		for(Emp emp:db.empList()){
			System.out.print(emp.getEmpno()+"\t");
			System.out.print(emp.getEname()+"\t");
			System.out.print(emp.getMgr()+"\t");
			System.out.print(emp.getJob()+"\t");
			System.out.print(emp.getHiredate()+"\t");
			System.out.print(emp.getSal()+"\t");
			System.out.print(emp.getComm()+"\t");
			System.out.print(emp.getDeptno()+"\n");
		}
		/*
		Emp sch01 = new Emp();
		sch01.setEname("S");
		System.out.println("검색 처리 메서드 호출~~~~");
		for(Emp emp:db.search(sch01)){
			System.out.print(emp.getEmpno()+"\t");
			System.out.print(emp.getEname()+"\t");
			System.out.print(emp.getMgr()+"\t");
			System.out.print(emp.getJob()+"\t");
			System.out.print(emp.getHiredate()+"\t");
			System.out.print(emp.getSal()+"\t");
			System.out.print(emp.getComm()+"\t");
			System.out.print(emp.getDeptno()+"\n");
		}	
		*/	
		
	}

}
