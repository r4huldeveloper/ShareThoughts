package com.registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String email = request.getParameter("useremail");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("option");
		String country = request.getParameter("usercountry");
		
		
		try {
			
			String url = "jdbc:mysql://localhost:3306/sharethoughts";
			String user = "root";
			String passwd ="rahulravi";
			
			// REGISTER JDBC DRIVER
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// OPEN A CONNECTION
			Connection con = DriverManager.getConnection(url,user,passwd);
			
			// CREATE A prepared statement 
			
			String sql = "INSERT INTO user (name,email,gender,hobbies,country) VALUES(?,?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1,username);
            stmt.setString(2,email);
            stmt.setString(3, gender);
            stmt.setString(4, String.join(",", hobby));
            stmt.setString(5, country);
            
            // EXECUTE THE STATEMENT
            stmt.executeUpdate();
            
            // CLOSE THE PREPARED STATEMENT AND DATABASE CONNECTION
            
            stmt.close();
            con.close();
            
           
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
