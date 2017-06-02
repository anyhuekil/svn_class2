package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.HorseInfo;
import vo.HorseRecord;

public class DAO_HorseInfo {

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public ArrayList<HorseInfo> popNRow(HorseInfo sch, int n) {
		ArrayList<HorseInfo> voList = new ArrayList<HorseInfo>();
		int rowCnt = 0;
		String cnt = "SELECT COUNT( * ) AS CNT FROM ( SELECT * FROM ( \n" + "SELECT ROWNUM NO, A.* FROM ( \n"
				+ "SELECT * FROM HORSE_INFO A ) A) "
				+ "WHERE HNAME LIKE '%'||?||'%' \n" + "AND GENDER LIKE '%'||?||'%' \n"
				+ "AND FATHER LIKE '%'||?||'%' \n" + "AND MOTHER LIKE '%'||?||'%' \n" + "AND OWNERNAME LIKE '%'||?||'%'"
				+ "AND TRAINERNAME LIKE '%'||?||'%' )";

		String sqlLess = "SELECT * FROM ( \n" + "SELECT ROWNUM NO, A.* FROM ( \n"
				+ "SELECT * FROM HORSE_INFO A ) A) "
				+ "WHERE HNAME LIKE '%'||?||'%' \n" + "AND GENDER LIKE '%'||?||'%' \n"
				+ "AND FATHER LIKE '%'||?||'%' \n" + "AND MOTHER LIKE '%'||?||'%' \n" + "AND OWNERNAME LIKE '%'||?||'%'"
				+ "AND TRAINERNAME LIKE '%'||?||'%'";

		String sqlBetween = "SELECT * FROM ( \n" + "SELECT ROWNUM NO, A.* FROM ( \n"
				+ "SELECT * FROM HORSE_INFO A ) A) "
				+ "WHERE HNAME LIKE '%'||?||'%' \n" + "AND GENDER LIKE '%'||?||'%' \n"
				+ "AND FATHER LIKE '%'||?||'%' \n" + "AND MOTHER LIKE '%'||?||'%' \n" + "AND OWNERNAME LIKE '%'||?||'%'"
				+ "AND TRAINERNAME LIKE '%'||?||'%'"
				+" AND NO BETWEEN ? AND ? ";
		HorseInfo vo = null;
		try {
			con = AA_Con.conn();
			pstmt = con.prepareStatement(cnt);
			pstmt.setString(1, sch.getHname());
			pstmt.setString(2, sch.getGender());
			pstmt.setString(3, sch.getFather());
			pstmt.setString(4, sch.getMother());
			pstmt.setString(5, sch.getOwnerName());
			pstmt.setString(6, sch.getTrainerName());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				rowCnt = rs.getInt("cnt");
				System.out.println(rowCnt);
			}

			con = AA_Con.conn();
			String whichSql=(rowCnt > 20)?sqlBetween:sqlLess;
			pstmt = con.prepareStatement(whichSql);
			pstmt.setString(1, sch.getHname());
			pstmt.setString(2, sch.getGender());
			pstmt.setString(3, sch.getFather());
			pstmt.setString(4, sch.getMother());
			pstmt.setString(5, sch.getOwnerName());
			pstmt.setString(6, sch.getTrainerName());
			if (rowCnt > 20) {
				pstmt.setInt(7, 20 * n+1);
				pstmt.setInt(8, 20 * (n + 1));
			} 
			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo = new HorseInfo();
				vo.setHname(rs.getString("hname"));
				vo.setHnum(rs.getInt("hnum"));
				vo.setBirthdate(rs.getDate("birthdate"));
				vo.setGender(rs.getString("gender"));
				vo.setColor(rs.getString("color"));
				vo.setRegdate(rs.getDate("regdate"));
				vo.setCountry(rs.getString("country"));
				vo.setFather(rs.getString("father"));
				vo.setMother(rs.getString("mother"));
				vo.setTrainerName(rs.getString("trainerName"));
				vo.setOwnerName(rs.getString("ownerName"));
				voList.add(vo);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return voList;
	}
	
	public ArrayList<HorseInfo> searchHor(HorseInfo sch) {
		ArrayList<HorseInfo> hlist = new ArrayList<HorseInfo>();
		HorseInfo vo = null;
		String sql = "SELECT * FROM HORSE_INFO\n" + "WHERE HNAME LIKE '%'||?||'%' \n" + "AND GENDER LIKE '%'||?||'%' \n"
				+ "AND FATHER LIKE '%'||?||'%' \n" + "AND MOTHER LIKE '%'||?||'%' \n" + "AND OWNERNAME LIKE '%'||?||'%'"
				+ "AND TRAINERNAME LIKE '%'||?||'%'";
		try {
			con = AA_Con.conn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sch.getHname());
			pstmt.setString(2, sch.getGender());
			pstmt.setString(3, sch.getFather());
			pstmt.setString(4, sch.getMother());
			pstmt.setString(5, sch.getOwnerName());
			pstmt.setString(6, sch.getTrainerName());
			
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo = new HorseInfo();
				vo.setHname(rs.getString("hname"));
				vo.setHnum(rs.getInt("hnum"));
				vo.setBirthdate(rs.getDate("birthdate"));
				vo.setGender(rs.getString("gender"));
				vo.setColor(rs.getString("color"));
				vo.setRegdate(rs.getDate("regdate"));
				vo.setCountry(rs.getString("country"));
				vo.setFather(rs.getString("father"));
				vo.setMother(rs.getString("mother"));
				vo.setTrainerName(rs.getString("trainerName"));
				vo.setOwnerName(rs.getString("ownerName"));
				hlist.add(vo);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		System.out.println(sql);
		return hlist;
	}

}
