/* sql 테이블 생성
 CREATE TABLE MEMBER
(
   ID         VARCHAR2 (100),
   PASSWORD   VARCHAR2 (100)
)
NOCACHE
LOGGING; 
*/
package z01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import z02_vo.Member;

public class LoginDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int checkLogin(String jid, String jpwd){
		int result = 0;
		try {
			con = ConnectDB.conn();
			String sql = "SELECT COUNT(*) FROM MEMBER "+"WHERE ID=? "+
										  "AND PASSWORD=?";
			pstmt = con.prepareStatement(sql);
//			System.out.println(sql);
			pstmt.setString(1, jid);
			pstmt.setString(2, jpwd );
			rs = pstmt.executeQuery();
			while( rs.next() ){
				result = rs.getInt(1);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null){
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
		return result;
	}
	public int confirmId(String jid){
		int result = 0;
		try {
//			setCon();
			con = ConnectDB.conn();
			String sql = "SELECT COUNT(*) FROM MEMBER WHERE ID=?";
			pstmt = con.prepareStatement(sql);
			System.out.println(sql);
			pstmt.setString(1, jid);
			rs = pstmt.executeQuery();
			while(rs.next()){
				result = rs.getInt(1);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null){
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
		return result;
	}
	public void insertMem(Member ins){
		try {
			setCon();
			con.setAutoCommit(false);
			sql = "INSERT INTO MEMBER VALUES(?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getJid());
			pstmt.setString(2, ins.getJpwd());
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
		} finally {
			try {
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
	}
	public static void main(String[] args) {
		LoginDAO db = new LoginDAO();		
		System.out.println(db.checkLogin("ADMIN", "ADMIN"));
		System.out.println(db.confirmId("futuure"));
		
	}
	
}
