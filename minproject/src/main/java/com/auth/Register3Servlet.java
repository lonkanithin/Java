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
import java.sql.SQLException;

import com.dto.Student;
@WebServlet("/register3")
public class Register3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		Student stu = (Student) session.getAttribute("stu");
		stu.setUname(request.getParameter("uname"));
		stu.setPass(request.getParameter("pass"));
		
		ServletContext ctx = request.getServletContext();
		String url=ctx.getInitParameter("url");
		String uname=ctx.getInitParameter("uname");
		String pass=ctx.getInitParameter("pass");
		
		try {
			Database database = new Database(url,uname,pass);
			database.InsertDetails(stu);
		} catch (SQLException e) {
			e.getMessage();
		}
		response.sendRedirect("login.jsp");
	
		
	}

}
