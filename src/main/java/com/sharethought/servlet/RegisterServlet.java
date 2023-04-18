package com.sharethought.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import com.sharethought.dao.*;
import com.sharethought.entity.*;
import com.sharethought.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		response.setContentType("text/html;charset=utf-8");
		
		try (PrintWriter out = response.getWriter()){
			
		
			String check = request.getParameter("condition");
			if(check == null) {
				out.println("Please accept the terms and conditions");
			}else {
				
				String name = request.getParameter("username");
				String email = request.getParameter("useremail");
				String gender = request.getParameter("usergender");
				String hobbies[] =  request.getParameterValues("options");
				String country = request.getParameter("usercountry");
				
				// create user object and set all data to that object
				User user = new User(name,email,gender,hobbies,country);
				
				// create a user dao object
				
				UserDao dao = new UserDao(ConnectionProvider.getConnection());
				if(dao.saveUser(user)){
					out.println("Done");
				} else {
					out.println("error");
				}
				
			}
		}
	}

}
