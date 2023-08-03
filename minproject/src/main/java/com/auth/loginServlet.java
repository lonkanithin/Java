package com.auth;
import com.dto.*;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;
@WebServlet("/login")
public class loginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		ServletContext ctx = request.getServletContext();
		String url=ctx.getInitParameter("url");
		String pass=ctx.getInitParameter("pass");
		String uname=ctx.getInitParameter("uname");
		
		
		
		try {
			Database database = new Database(url, uname, pass);
			 ResultSet answer = database.checking(username);
			   if (answer.next()) {
		            String dbUsername = answer.getString("uname");
		            String dbPassword = answer.getString("pass");

		            if (dbUsername.equals(username) && dbPassword.equals(password)) {
		                HttpSession session = request.getSession();
		                session.setAttribute("username", username);
		                response.sendRedirect("Dashboard.jsp");
		            } else {
		                response.sendRedirect("error.jsp");
		            }
		        } else {
		            response.sendRedirect("error.jsp");
		        }

		        // Close the ResultSet, PreparedStatement, and Connection after retrieving data
		        answer.close();
		        // Since we didn't use try-with-resources here, make sure to close resources manually
		     
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		
		
	}

}
