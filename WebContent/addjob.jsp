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
<%! String loginid;%>





<%
String company = request.getParameter("company");
String recruiterid = request.getParameter("recruiterid");
//int jobid = Integer.parseInt(request.getParameter("jobid"));
String skills = request.getParameter("skills");
String salary = request.getParameter("salary");
String doi = request.getParameter("doi");
//String address = request.getParameter("address");
String description = request.getParameter("description");
String location = request.getParameter("location");

int maxjobid=-1;
try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
Statement st = con.createStatement();

int i =st.executeUpdate("insert into job(recruiterid,company,skills,salary,doi,description) values('"+recruiterid+"','"+company+"','"+skills+"','"+salary+"','"+doi+"','"+description+"')");

ResultSet rs2 = st.executeQuery("select max(jobid) from job");
if(rs2.next())
{
 maxjobid = rs2.getInt(1);
}
System.out.println(maxjobid);

int j =st.executeUpdate("insert into joblocation(jobid,location) values('"+maxjobid+"','"+location+"')");
response.sendRedirect("Recruiter.jsp");

}
catch(Exception e)
{System.out.println(e);}

%>
</body>
</html>