<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "java.util.Base64" %>
<%@ page import = "java.util.Base64" %>
<%@ page import = "encryption.*" %>

<%
String userid = request.getParameter("userid");
session.putValue("loginid",userid);
String pass = request.getParameter("password");

String password = Password.encrypt(pass);


String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String dob = request.getParameter("dob");
String mobile = request.getParameter("mobile");
String gender = request.getParameter("gender");

try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
Statement st = con.createStatement();
ResultSet rs;
int i =st.executeUpdate("insert into user (userid,password,fname,lname,dob,mobile,gender) values('"+userid+"','"+password+"','"+fname+"','"+lname+"','"+dob+"','"+mobile+"','"+gender+"')");
if(i>0)
response.sendRedirect("Indexx.jsp");

}
catch(Exception e)
{out.println("already registered");}

%>
</body>
</html>