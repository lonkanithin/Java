<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login page</title>
    <link rel="stylesheet" href="login.css">
  </head>
  <body>
   <%--JSP Directive --%>
			<%@ include file="header.jsp"%>

				<%--JSP Declarative --%>
    <div class="center">
      <h1>Login</h1>
      <form action="login" method="post">
        <div class="txt_field">
          <span></span>
          <input type="text" name="uname" placeholder="Enter Username">
          <label>Username</label>
        </div>
        <div class="txt_field">
          <span></span>
           <input type="Password" name="pass" placeholder="Enter Password">
           <label>Password</label>
        </div>
        
        <input type="submit" value="Login">
        <div class="signup_link">
          Not a member? <a href="register1.jsp">Signup</a>
        </div>
      </form>
    </div>
<%--JSP Directive --%>
			<%@ include file="footer.jsp"%>

				<%--JSP Declarative --%>
  </body>
</html>