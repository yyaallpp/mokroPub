package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	public static Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			String dburl = "jdbc:mariadb://52.78.198.39:3306/mokropub";
			String dbuser = "root";
			String dbpw = "mariadb1234";	
			conn = DriverManager.getConnection(dburl,dbuser,dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}