<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style >

body{
 
background-image:url('fn.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%;

}
div.a {
  position: absolute;
  top:90px;
}


</style>

<meta charset="UTF-8">
<title>aboutus</title>
</head>
<body>
   <%--JSP Directive --%>
	<%@ include file="header.jsp"%>
    <%--JSP Declarative --%>
    <div class="a">
    <h1>Welcome!</h1>
	<h1>YOU WANT TO KNOW ABOUT US</h1>
	<h1>DONT CHECK ANYTHING YOU DONT FIND ANYTHING ABOUT US</h1>
	</div>
	<%--JSP Directive --%>
	<%@ include file="footer.jsp"%>

	<%--JSP Declarative --%>
</body>
</html>