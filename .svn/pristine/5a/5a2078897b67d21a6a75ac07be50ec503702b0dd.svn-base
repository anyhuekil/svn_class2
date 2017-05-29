package jspexp.z04_member;

import java.sql.*;
import java.util.ArrayList;

public class MemberDAO {
	public static final int FAIL = 0;
	public static final int SUCCESS = 1;
	public static final int MEMBER_EXISTENT = 1;
	public static final int MEMBER_NONEXISTENT = 0;
	private static MemberDAO instance = new MemberDAO();
	private MemberDAO(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static MemberDAO getInstance(){
		return instance;
	}
	private Connection getConnection(){
		Connection conn= null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "scott";
		String upw = "tiger";
		try {
			conn = DriverManager.getConnection(url, uid, upw);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	public MemberDTO getMember(MemberDTO member){
		MemberDTO dto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member where id=? and pw=?";
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setPoint(rs.getInt("point"));
				dto.setAuth(rs.getString("auth"));
				dto.setEmail(rs.getString("email"));
				dto.setRdate(rs.getDate("rdate"));
				dto.setAddress(rs.getString("address"));
			}
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			try{
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch (Exception ignore) { }
		}
		return dto;
	}
	public int confirmId(String id){
		int result = FAIL;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM member WHERE id=?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				result = MEMBER_EXISTENT;
			}else{
				result = MEMBER_NONEXISTENT;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)   rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e){e.printStackTrace();}
		}
		return result;
	}
	public ArrayList<MemberDTO> getMemberList(){
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member";
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				int point = rs.getInt("point");
				String auth = rs.getString("auth");
				String email = rs.getString("email");
				Date rdate = rs.getDate("rdate");
				String address = rs.getString("address");
				list.add(new MemberDTO(id, pw, name, point, auth, email, rdate, address));
			}
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			try{
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch (Exception ignore) { }
		}
		return list;
	}
	public int updateMember(MemberDTO dto){
		int result = FAIL;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update member set point=? where id=?";
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getPoint());
			pstmt.setString(2, dto.getId());
			result = pstmt.executeUpdate();
			if(result>FAIL){
				result = SUCCESS;
			}
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			try{
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch (Exception ignore) { }
		}
		return result;
	}
}