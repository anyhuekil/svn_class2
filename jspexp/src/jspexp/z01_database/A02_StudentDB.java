package jspexp.z01_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jspexp.z02_vo.Emp;
import jspexp.z02_vo.Student;

public class A02_StudentDB {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public ArrayList<Student> stuList(){
		ArrayList<Student> list = new ArrayList<Student>();
		try {
			con=A00_DB.conn();
			stmt=con.createStatement();
			String sql="SELECT * FROM STUDENT ";
			rs = stmt.executeQuery(sql);
			Student stu=null; 
			while(rs.next()){
				stu = new Student();
				stu.setName(rs.getString("name"));			
				stu.setGrade(rs.getInt("grade"));
				stu.setSect(rs.getInt("sect"));
				stu.setKor(rs.getInt("kor"));
				stu.setEng(rs.getInt("eng"));
				stu.setMath(rs.getInt("math"));
				list.add(stu);		
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			
			// 자원 해제
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();	
				if(con!=null)con.close();				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}	
	// 입력메서드 만들기..
	public void insertStudent(Student ins){
		try {
			con=A00_DB.conn();
			String sql="INSERT INTO STUDENT VALUES(?,?,?,?,?,?)";
			con.setAutoCommit(false);
			pstmt=con.prepareStatement(sql);	
			pstmt.setString(1, ins.getName());
			pstmt.setInt(2, ins.getGrade());
			pstmt.setInt(3, ins.getSect());
			pstmt.setInt(4, ins.getKor());
			pstmt.setInt(5, ins.getEng());
			pstmt.setInt(6, ins.getMath());
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
	
	public static void main(String args[]){
		A02_StudentDB dao=new A02_StudentDB();
		System.out.println(dao.stuList().size());
		Student ins = new Student();
		ins.setName("이기자");
		ins.setGrade(3);
		ins.setSect(2);
		ins.setKor(70);
		ins.setEng(70);
		ins.setMath(100);
		dao.insertStudent(ins);
		System.out.println(dao.stuList().size());
	}
}
