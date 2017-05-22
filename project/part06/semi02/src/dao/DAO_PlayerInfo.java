package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.PlayerInfo;

public class DAO_PlayerInfo {
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void regPlayer(PlayerInfo ins){
		String sql = "INSERT INTO PLAYER_INFO VALUES(?,?,?,?,?,0,0,0,0,10000,0,0,0)";
		// pid, pass, pname, email, tel, mchoice, totbet, totbenefit, totlose, curmoney, first, second, third
		try {
			con = AA_Con.conn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getPid());
			pstmt.setString(2, ins.getPass());
			pstmt.setString(3, ins.getPname());
			pstmt.setString(4, ins.getEmail());
			pstmt.setString(5, ins.getTel());
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
		} finally{
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con != null){
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	// pid, pname, pass, email, tel, mchoice totbet, totbenefit, totlose, curmoney, first, second, third
	public void updatePlayer(PlayerInfo upt){
		
		String sql = "UPDATE PLAYER_INFO \n"
				+ "PASS = ? \n"
				+ "PNAME = ? \n"
				+ "EMAIL = ? \n"
				+ "TEL = ? \n";
		try {
			con = AA_Con.conn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getPass());
			pstmt.setString(2, upt.getPname());
			pstmt.setString(3, upt.getEmail());
			pstmt.setString(4, upt.getTel());
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
		} finally{
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con != null){
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	
	public ArrayList<PlayerInfo> searchPlayer(PlayerInfo sch){
		ArrayList<PlayerInfo> plist = new ArrayList<PlayerInfo>();
		String sql = "SELECT PID, PNAME, MCHOICE, TOTBET, TOTBENEFIT, TOTLOSE, CURMONEY, FIRST, SECOND, THIRD \n"
				+ "FROM PLAYER_INFO \n"
				+ "WHERE PID LIKE '%'||?||'%' \n"
				+ "AND PNAME LIKE '%'||?||'%' \n"
				+ "AND CURMONEY = ? \n";
		PlayerInfo pi = null;
		
		try {
			con = AA_Con.conn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sch.getPid());
			pstmt.setString(2, sch.getPname());
			pstmt.setDouble(3, sch.getCurmoney());
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				pi = new PlayerInfo();
				pi.setPid(rs.getString(1));
				pi.setPass(rs.getString(2));
				pi.setPname(rs.getString(3));
				pi.setEmail(rs.getString(4));
				pi.setTel(rs.getString(5));
				pi.setMchoice(rs.getInt(6));
				pi.setTotbet(rs.getInt(7));
				pi.setTotbenefit(rs.getInt(8));
				pi.setTotlose(rs.getInt(9));
				pi.setCurmoney(rs.getInt(10));
				pi.setFirst(rs.getInt(11));
				pi.setSecond(rs.getInt(12));
				pi.setThird(rs.getInt(13));
				
				plist.add(pi);
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			if(rs != null){
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con != null){
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return plist;
	}
	
	public void delPlayer(PlayerInfo del){
		String sql = "DELETE FROM PLAYER_INFO WHERE PID = ?";
		
		try {
			con = AA_Con.conn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, del.getPid());
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
		} finally{
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con != null){
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	
	
}
