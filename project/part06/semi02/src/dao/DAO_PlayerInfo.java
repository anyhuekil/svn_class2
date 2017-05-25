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
		// pid, pass, pname, email, tel, mChoice, totBet, totBenefit, totLose, curMoney, first, second, third
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
			System.out.println(sql);
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
	// pid, pname, pass, email, tel, mChoice totBet, totBenefit, totLose, curMoney, first, second, third
	public void updatePlayer(PlayerInfo upt, int proc){
		/*
		 * --- proc----
		 * 1: È¸¿ø Á¤º¸ ¼öÁ¤
		 * 2: °ÔÀÓ Á¾·á ÈÄ Á¤º¸ °»½Å
		 * 
		*/
		String sql="";
		
		try {
			con = AA_Con.conn();
			con.setAutoCommit(false);
			System.out.println(upt.getPname());
			System.out.println(upt.getPid());
			
			if(proc==1){
				sql = "UPDATE PLAYER_INFO\n"
						+ "SET PASS =?, \n"
						+ "PNAME =?, \n"
						+ "EMAIL =?, \n"
						+ "TEL =? \n"
						+ "WHERE PID =?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, upt.getPass());
				pstmt.setString(2, upt.getPname());
				pstmt.setString(3, upt.getEmail());
				pstmt.setString(4, upt.getTel());
				pstmt.setString(5, upt.getPid());
				}
				else if(proc==2){
					sql = "UPDATE PLAYER_INFO\n"
							+"SET CURMONEY=? \n"
							+ "WHERE PID =?";
					pstmt = con.prepareStatement(sql);
					pstmt.setDouble(1, upt.getCurMoney());
					pstmt.setString(2, upt.getPid());
				}
			pstmt.executeUpdate();
			con.commit();
			System.out.println(sql);
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
		String sql = "SELECT * FROM ( \n"
				+ "SELECT ROWNUM NO, A.* FROM ( \n"
				+ "SELECT * FROM PLAYER_INFO A ORDER BY CURMONEY DESC) A) WHERE PID LIKE '%'||?||'%'";
		
		/*String sql = "SELECT * FROM PLAYER_INFO \n"
				+ "WHERE PID LIKE '%'||?||'%' \n"
				+ "ORDER BY curMoney DESC";*/
		PlayerInfo pi = null;
		
		try {
			con = AA_Con.conn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sch.getPid());
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				pi = new PlayerInfo();
				pi.setRank(rs.getInt("no"));
				pi.setPid(rs.getString("pid"));
				pi.setPass(rs.getString("pass"));
				pi.setPname(rs.getString("pname"));
				pi.setEmail(rs.getString("email"));
				pi.setTel(rs.getString("tel"));
				pi.setmChoice(rs.getInt("mChoice"));
				pi.settotBet(rs.getDouble("totBet"));
				pi.settotBenefit(rs.getDouble("totBenefit"));
				pi.settotLose(rs.getDouble("totLose"));
				pi.setcurMoney(rs.getDouble("curMoney"));
				pi.setFirst(rs.getInt("first"));
				pi.setSecond(rs.getInt("second"));
				pi.setThird(rs.getInt("third"));
				plist.add(pi);
			}
			System.out.println(sql);
			
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
			System.out.println(sql);
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
	
	public PlayerInfo loginPlayer(PlayerInfo login){
		PlayerInfo pi = null;
		String sql = "SELECT * FROM PLAYER_INFO WHERE PID = ? AND PASS = ?";
		try {
			con = AA_Con.conn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, login.getPid());
			pstmt.setString(2, login.getPass());
			rs = pstmt.executeQuery();
			if(rs.next()){
				pi = new PlayerInfo();
				pi.setPid(rs.getString("pid"));
				pi.setPass(rs.getString("pass"));
				pi.setPname(rs.getString("pname"));
				pi.setEmail(rs.getString("email"));
				pi.setTel(rs.getString("tel"));
				pi.setmChoice(rs.getInt("mChoice"));
				pi.settotBet(rs.getDouble("totBet"));
				pi.settotBenefit(rs.getDouble("totBenefit"));
				pi.settotLose(rs.getDouble("totLose"));
				pi.setcurMoney(rs.getDouble("curMoney"));
				pi.setFirst(rs.getInt("first"));
				pi.setSecond(rs.getInt("second"));
				pi.setThird(rs.getInt("third"));
			}
			System.out.println(sql);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return pi;
	}
	
	public PlayerInfo checkDuplicatedId(String id){
		String sql = "SELECT * FROM PLAYER_INFO WHERE PID = ? ";
		PlayerInfo vo=null;
		try {
			con = AA_Con.conn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			System.out.println(sql);			
			if(rs.next()){
<<<<<<< .mine
				System.out.println("ì¤‘ë³µëœ idìž…ë‹ˆë‹¤.");
||||||| .r268
				System.out.println("Áßº¹µÈ idÀÔ´Ï´Ù.");
=======
				vo=new PlayerInfo();
				System.out.println("Áßº¹µÈ idÀÔ´Ï´Ù.");
>>>>>>> .r278
				vo.setPid(rs.getString("pid"));
				vo.setPass(rs.getString("pass"));
				vo.setPname(rs.getString("pname"));
				vo.setEmail(rs.getString("email"));
				vo.setTel(rs.getString("tel"));
				vo.setmChoice(rs.getInt("mChoice"));
				vo.settotBet(rs.getDouble("totBet"));
				vo.settotBenefit(rs.getDouble("totBenefit"));
				vo.settotLose(rs.getDouble("totLose"));
				vo.setcurMoney(rs.getDouble("curMoney"));
				vo.setFirst(rs.getInt("first"));
				vo.setSecond(rs.getInt("second"));
				vo.setThird(rs.getInt("third"));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return vo;
	}
	
	public static void main(String[] args) {
		
		DAO_PlayerInfo dao = new DAO_PlayerInfo();
		PlayerInfo pp = new PlayerInfo();
		pp.setPid("kjho1e3");
		pp.setPname("ÇìÇì");
		pp.setEmail("gg");
		pp.setPass("3333");
		pp.setTel("99999");
		dao.updatePlayer(pp,1);
		
		/*System.out.println("id\tpass\tname\temail\ttel\tmcho\tbet\tbenefit\tlose\tmoney\tfirst\tsecond\tthird");
		for(PlayerInfo c:dao.searchPlayer(pp)){
			System.out.print(c.getPid()+"\t");
			System.out.print(c.getPass()+"\t");
			System.out.print(c.getPname()+"\t");
			System.out.print(c.getEmail()+"\t");
			System.out.print(c.getTel()+"\t");
			System.out.print(c.getmChoice()+"\t");
			System.out.print(c.gettotBet()+"\t");
			System.out.print(c.gettotBenefit()+"\t");
			System.out.print(c.gettotLose()+"\t");
			System.out.print(c.getCurMoney()+"\t");
			System.out.print(c.getFirst()+"\t");
			System.out.print(c.getSecond()+"\t");
			System.out.println(c.getThird());
		}*/
	}
}
