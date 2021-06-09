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
String loginid = session.getAttribute("loginid").toString();
%>

<%
int i=0;
int j=0;
String fname="aa",lname="aa",mobile="aa",email="aa";
int jobid=Integer.parseInt(request.getParameter("jobid"));

try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
Statement st = con.createStatement();



/*ResultSet rs2 = st.executeQuery("select * from user where loginid = '"+loginid+"'");
if(rs2.next())
{
	 fname = rs2.getString(2);
	 lname = rs2.getString(3);
	 mobile = rs2.getString(8);
	 email = rs2.getString(7);
	 
System.out.println(loginid);
}*/

/*ResultSet rs =st.executeQuery("select * from job where sl='"+sl+"'");
if(rs.next()){
String cname = rs.getString(2);
String language = rs.getString(3);
String salary = rs.getString(4);
String doi = rs.getString(5);
String address = rs.getString(6);
String description = rs.getString(7);
*/
i =st.executeUpdate("insert into appliedjob(userid,jobid) values('"+loginid+"','"+jobid+"')");

 //System.out.println(sl);
 response.sendRedirect("User.jsp");


}
catch(Exception e)
{System.out.println(e);
out.println("Already applied");
}


%>
</body>
</html>