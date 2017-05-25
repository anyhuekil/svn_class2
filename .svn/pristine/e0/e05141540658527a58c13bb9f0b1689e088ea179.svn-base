package z01_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.text.SimpleDateFormat;

import z02_vo.AuctionItemVO;

public class AuctionItemDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public AuctionItemVO infoItem(AuctionItemVO sch) {
		AuctionItemVO ii = null;
		try {
			// setConn();
			con = ConnectDB.conn();
			String sql = "select * from Auction_item " + "where auction_ID = ? ";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sch.getAuctionId());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				ii = new AuctionItemVO();
				ii.setAuctioneerId(rs.getInt(1));
				ii.setAuctionId(rs.getInt(2));
				ii.setItemName(rs.getString(3));
				ii.setStartDate(rs.getDate(4));
				ii.setEndDate(rs.getDate(5));
				ii.setState(rs.getInt(6));
				ii.setCurrentBidAmount(rs.getDouble(7));
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
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return ii;
	}

	public void raisePrice(AuctionItemVO udt) {
		try {
			// setConn();
			con = ConnectDB.conn();
			String sql = "update Auction_item " + "set current_Bid_Amount = ? " + "where auction_ID = ? ";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setDouble(1, udt.getCurrentBidAmount());
			pstmt.setInt(2, udt.getAuctionId());
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
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	public static void main(String[] args) {
//		AuctionItemDAO dao = new AuctionItemDAO();
//		AuctionItemVO dto = new AuctionItemVO();
//		dto.setAuctionId(1);
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//		String day = sdf.format(dao.infoItem(dto).getEndDate());
//		System.out.println(day);
	}

}
