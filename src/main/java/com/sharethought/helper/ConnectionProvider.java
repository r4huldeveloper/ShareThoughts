package com.sharethought.helper;
import java.sql.*;
public class ConnectionProvider {

	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			if(con == null) {
			String url = "jdbc:mysql://localhost:3306/sharethoughts";
			String user = "root";
			String passwd ="rahulravi";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url,user,passwd);
            
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
