package com.sharethought.dao;

import java.sql.*;

import com.sharethought.entity.User;

public class UserDao {
	
	private Connection con;
	boolean f = false;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	public boolean saveUser(User user) {
		
		try {
			String query = "INSERT INTO user (name,email,gender,hobbies,country) VALUES(?,?,?,?,?)";
			PreparedStatement psmt = this.con.prepareStatement(query);
			psmt.setString(1, user.getName());
			psmt.setString(2, user.getEmail());
			psmt.setString(3, user.getGender());
			psmt.setString(4,String.join(",", user.getHobbies()));
			psmt.setString(5, user.getCountry());
			
			psmt.executeUpdate();
			f = true;
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
