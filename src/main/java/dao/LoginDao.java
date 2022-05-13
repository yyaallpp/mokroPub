package dao;

import vo.*;
import java.util.*;

import util.DBUtil;

import java.sql.*;

public class LoginDao {
	// consumerId를 가져오는 메서드
	public String selectMemberByIdPw(String id, String pw){
		String memberId = null;
		Consumer consumer = null;
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "SELECT consumer_id consumerId FROM consumer WHERE consumer_id= ? AND password = PASSWORD(?)";

        try {
        	conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, pw);
			rs  = stmt.executeQuery();
			while(rs.next()) {
				consumer = new Consumer();
				consumer.setConsumerId(rs.getString("consumerId"));
				memberId = consumer.getConsumerId();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
        System.out.println(memberId + " <-- memberId selectMemberByIdPw() LoginDao");
		return memberId;
	}
}
