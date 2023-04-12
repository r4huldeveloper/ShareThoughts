package com.Registration;

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

public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("username");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String[] selectedOptions = request.getParameterValues("option");
		String selectedOptionString = String.join(",", selectedOptions);
		String country = request.getParameter("userCountry");
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sharethoughts","root","rahulravi");
			System.out.println("Connection successful");
			PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, gender);
			ps.setString(4, selectedOptionString);
			ps.setString(5, country);
			
			int i = ps.executeUpdate();
			if(i > 0) {
				out.print("You are successfully registered");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		out.close();
		
	}

}
