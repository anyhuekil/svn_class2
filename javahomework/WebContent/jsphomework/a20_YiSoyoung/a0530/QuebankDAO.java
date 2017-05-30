package jspexp.z03_quebank;

import java.sql.*;
import java.util.ArrayList;
public class QuebankDAO {
	public static final int SUCCESS = 1;
	public static final int FAIL = 0;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public QuebankDAO(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	private Connection conn() throws ClassNotFoundException, SQLException{
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(url, "scott", "tiger");
		return conn;
	}
	public ArrayList<Quebank> search(String que, String coransw){
		ArrayList<Quebank> list = new ArrayList<Quebank>();
		try {
			conn = conn();
			String sql = "SELECT * FROM QUEBANK WHERE QUE LIKE '%'||?||'%' "
					+ " AND coransw LIKE '%'||?||'%' ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, que);
			pstmt.setString(2, coransw);
			rs = pstmt.executeQuery();
			Quebank qb = null;
			while(rs.next()){
				qb = new Quebank();
				qb.setNo(rs.getInt("no"));
				qb.setQue(rs.getString("que"));
				qb.setCoransw(rs.getString("coransw"));
				qb.setQueType(rs.getString("que_type"));
				list.add(qb);
			}
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}finally {
			try{
				if(rs!=null) rs.close();
				if(pstmt!=null) rs.close();
				if(conn != null) conn.close();
			}catch (Exception egnore) {		}
		}
		System.out.println("간다");
		return list;
	}
	public ArrayList<Quebank> search(Quebank sch){
		ArrayList<Quebank> list = new ArrayList<Quebank>();
		try {
			conn = conn();
			String sql = "SELECT * FROM QUEBANK WHERE QUE LIKE '%'||?||'%' "
					+ " AND QUE_TYPE LIKE '%'||?||'%' ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sch.getQue());
			pstmt.setString(2, sch.getQueType());
			rs = pstmt.executeQuery();
			Quebank qb = null;
			while(rs.next()){
				qb = new Quebank();
				qb.setNo(rs.getInt("no"));
				qb.setQue(rs.getString("que"));
				qb.setCoransw(rs.getString("coransw"));
				qb.setQueType(rs.getString("que_type"));
				list.add(qb);
			}
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}finally {
			try{
				if(rs!=null) rs.close();
				if(pstmt!=null) rs.close();
				if(conn != null) conn.close();
			}catch (Exception egnore) {		}
		}
		return list;
	}
	public int insert(Quebank sch){
		int result =FAIL;
		try {
			conn = conn();
			String sql = "insert into QUEBANK values(quebank_seq.nextval, ?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sch.getQue());
			pstmt.setString(2, sch.getCoransw());
			pstmt.setString(3, sch.getQueType());
			result = pstmt.executeUpdate();
			if(result == SUCCESS){
				System.out.println("문제 입력 성공");
			}else{
				System.out.println("문제 입력 실패");
			}
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}finally {
			try{
				if(rs!=null) rs.close();
				if(pstmt!=null) rs.close();
				if(conn != null) conn.close();
			}catch (Exception egnore) {		}
		}
		return result;
	}
	public int que_no(){
		int no = 0;
		try {
			conn = conn();
			String sql = "select max(no)+1 from quebank";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			no = rs.getInt(1);
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}finally {
			try{
				if(rs!=null) rs.close();
				if(pstmt!=null) rs.close();
				if(conn != null) conn.close();
			}catch (Exception egnore) {		}
		}
		return no;
	}
	public static void main(String[] args) {
		QuebankDAO dao = new QuebankDAO();
		Quebank sch = new Quebank();
		sch.setQue("");
		sch.setQueType("");
		ArrayList<Quebank> list = dao.search(sch);
		for(Quebank l : list){
			System.out.println(l);
		}
	}
}
