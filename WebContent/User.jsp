<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
  <style>
body  {
  background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7iAgp4JZ55_wClboA5pID1XpU5oOytzcB3e9DX2awio7H0hDSTQ&s");
 
  height:600px;
  background-position: center;
  background-repeat: no-repeat;
  position: relative;
}

footer{

position:absolute;
bottom:15px;
width:100%;
height: 4rem;
}
</style>


</head>
<body>
  <%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<% 
try{

String loginid = session.getAttribute("loginid").toString();



}
catch(Exception e)
{System.out.println(e);}

String loginid = session.getAttribute("loginid").toString();
%>

<div class="container-fluid">

  <div class="row" style="height:80px;">
 
    <div class="col-sm-3" style="background-color:#34495e;color:white;padding-top:5px;font-size:40px"> <span class="glyphicon glyphicon-education"></span> <u>jobPortal</u></div>
    <div class="col-sm-6" style="background-color:#34495e;color:white;padding-top:20px;font-size:20px">
    
    &emsp; <a href ="joblistu.jsp" style="color:white;font-size:18px;"><span class="glyphicon glyphicon-th-list"></span> Job List</a>
   
    &emsp; <a href ="profileu.jsp" style="color:white;font-size:18px;"><span class="glyphicon glyphicon-user"></span>My Profile</a>
     
     </div>
    <div class="col-sm-3" style="background-color:#34495e;padding-top:22px;color:white;font-size:18px"><span><b>Hi..<%= loginid %> (User)</b> </span>
    <a href="logout.jsp"style="color:white;font-size:18px"><span class="glyphicon glyphicon-log-out"></span>Logout </a>
  
   

  </div>
 
</div>
<div style = "  text-align: center;position: absolute;top: 60%;left: 50%;transform: translate(-50%, -50%);color: black;">
<h1><b><i> Welcome to Job Portal Management</i></b></h1>
</div>

 

<footer>
<div class="row" style="height:60px">
<div class ="col-sm-3" style = "background-color: black;opacity:0.8;font-size:15px;text-align:center;padding-top:16px"><a href = "contact.jsp" style="color:white">Contact Us</a></div>
<div class ="col-sm-3" style = "background-color: black;opacity:0.8;font-size:15px;text-align:center;padding-top:16px"><a href ="aboutus.jsp" style="color:white">About us</a></div>
<div class ="col-sm-3" style = "background-color: black;opacity:0.8;font-size:15px;text-align:center;padding-top:16px"><a href ="https://support.google.com/sites/?hl=en#topic=7184580" style="color:white">Support</a></div>
<div class ="col-sm-3" style = "background-color: black;opacity:0.8;font-size:15px;text-align:center;padding-top:16px"><a href ="legal.jsp" style="color:white">Legal</a></div>
</div></footer>
</body>
</html>

