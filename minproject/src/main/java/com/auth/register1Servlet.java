package com.auth;
import com.dto.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
@WebServlet("/register1")
public class register1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Student stu = new Student();
		HttpSession session = request.getSession();
		stu.setFname(request.getParameter("fname"));
		stu.setLname(request.getParameter("lname"));
		stu.setGender(request.getParameter("gender"));
		stu.setDate(request.getParameter("dob"));
		session.setAttribute("stu", stu);
		response.sendRedirect("register2.jsp");
		
	}

}
