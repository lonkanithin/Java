<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  
  <style >

body{

background-image:url('k.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%;
margin        : 0;
   padding       : 0;
   display       : grid;
   place-content : center;
   min-height    : 100vh;
    
}
button.round {
   
   width: 200px;
  height: 50px;
  border-radius: 40px;
  background: #fbceb5 !important;
}


</style>
  	<title>Login</title>
  	
    <meta charset="utf-8">
	</head>
	
	<body>
	
		      <%--JSP Directive --%>
			<%@ include file="header.jsp"%>

				<%--JSP Declarative --%>	
		      	<form action="register1.jsp" align='center' >
	            
	            	<p style="color: balck"><h1>JOIN WITH US TO GET SUCCESS IN LIFE</h1></p>
	            	<p><button class="round" type="submit"><h2>Join us</h2></button></p>
	            
	            
	          </form>
		      
	 <%--JSP Directive --%>
	<%@ include file="footer.jsp"%>

	<%--JSP Declarative --%>
 
	</body>
</html>

    