<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%

response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //1.1
 response.setHeader("Pragma", "no-cache"); //1.0
response.setHeader("Expires", "0") ;//proxies
if (session.getAttribute("username") == null) {
    response.sendRedirect("login.jsp");
}
%>
<%@ page import="com.dto.*" import="java.sql.*"
 %>
<%
ServletContext ctx = request.getServletContext();
String url=ctx.getInitParameter("url");
String pass=ctx.getInitParameter("pass");
String uname=ctx.getInitParameter("uname");
String query = "select * from data where uname = ?";
Connection con = DriverManager.getConnection(url, uname, pass);
PreparedStatement statement = con.prepareStatement(query);
String username = (String) session.getAttribute("username");
statement.setString(1, username);
ResultSet answer = statement.executeQuery();
if (answer.next()){
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
    
<script>
    function logout() {
        fetch('logout', { method: 'POST' })
            .then(() => window.location.href = 'login.jsp');
    }
</script>
<style type="text/css">

li a:hover{
background:gray;
font-size:20px;
border-radius: 10px;
}
</style>
</head>
<body>
<div class="navbar">
        <a href="index.jsp">student🤍</a>
       
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about us.jsp">About Us</a></li>
            <li><a href="login" onclick="logout()">Logout</a></li>
            <!-- Add this to your HTML page -->

        </ul>
       
    </div>
    <div class="main">
        <h1>Welcome to Your Dashboard!</h1>
        <table>
            <thead>
                <tr>
                    <th colspan="2">Your Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>First Name:</th>
                    <td><%= answer.getString(1) %></td>
                </tr>
                <tr>
                    <th>Last Name:</th>
                    <td><%= answer.getString(2) %></td>
                </tr>
                <tr>
                    <th>Gender:</th>
                    <td><%= answer.getString(3) %></td>
                </tr>
                <tr>
                    <th>Date Of Birth:</th>
                    <td><%= answer.getString(4) %></td>
                </tr>
                <tr>
                    <th>Mobile No:</th>
                    <td><%= answer.getString(5) %></td>
                </tr>
                <tr>
                    <th>Alternate Mobile Number:</th>
                    <td><%= answer.getString(6) %></td>
                </tr>
                <tr>
                    <th>Email:</th>
                    <td><%=  answer.getString(7) %></td>
                </tr>
            </tbody>
        </table>
        <%
} else {
    
  
}
%>     
    </div>
    	 <%--JSP Directive --%>
	<%@ include file="footer.jsp"%>

	<%--JSP Declarative --%>
</body>
</html>
