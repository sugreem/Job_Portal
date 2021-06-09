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
<%@ page import = "encryption.*" %>

<%
String recruiterid = request.getParameter("recruiterid");

String pass = request.getParameter("password");
String password = Password.encrypt(pass);

String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String company = request.getParameter("company");
String dob = request.getParameter("dob");
String mobile = request.getParameter("mobile");
String gender = request.getParameter("gender");

try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
Statement st = con.createStatement();
ResultSet rs;
int i =st.executeUpdate("insert into recruiter(fname,lname,recruiterid,password,dob,company,mobile,gender) values('"+fname+"','"+lname+"','"+recruiterid+"','"+password+"','"+dob+"','"+company+"','"+mobile+"','"+gender+"')");

response.sendRedirect("Admin.jsp");

}
catch(Exception e)
{System.out.println(e);}

%>

</body>
</html>