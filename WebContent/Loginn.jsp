<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
margin: 0;
padding:0;
font-family:sans-serif;
background: #34495e;
}

</style>


</head>
<body>

<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
%>
<form action="login.jsp" method="post">
<h1 style = "color:white">Login</h1>
<input type = "text" name="loginid" placeholder="loginId"  size = "20" required>
<input type = "password" name="password" placeholder="Password" size = "20" required>
<input type="submit"  value="Login">
 <p  style="color:red">
           <%
            String user = request.getParameter("user");
           %>
           <% if(user!=null)
              {
        	   out.println(user);
              }
           
           
           %>
            </p> 	

</form> 

</body>
</html>