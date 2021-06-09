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
<%

try{
	 
     session=request.getSession();
	int status =0;
	System.out.println("\nin delete");
	String recruiterid =request.getParameter("recruiterid");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
Statement st = con.createStatement();
ResultSet rs;


status = st.executeUpdate("delete from recruiter where recruiterid = '"+recruiterid+"' ");

if(status>0)
{
    session.setAttribute("deleted", "Employee has been removed Successfully..");
    response.sendRedirect("recruiterlist.jsp");
}
else
{
    out.println("Oops! Something went wrong...");
}
	
	
	


}
catch(Exception e)
{System.out.println(e);}

%>




</body>
</html>