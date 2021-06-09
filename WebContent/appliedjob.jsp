
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employees</title>  
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
           
           <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
      <script type="text/javascript">
     function validation()
     {
    	 swal("Record Deleted Successfully");
     }
    
    </script>

  <script type ="text/javascript">
   $(document).ready(function(){
	 $("#mytable").DataTable();
	   
   });
    </script> 

       
    </head>
    <body>
    <%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>


    <%
    String loginid = session.getAttribute("loginid").toString();
    %>
                   <div class="card-header col-lg-4-auto " style="background-color:#34495e;height:60px;color:white">
      		<h2><b> <center>Applied job list</center></b></h2>
      	    </div><br>  
   
   
    
    
        
        <table id ="mytable"  class="table table-bordered table-striped table-hover" >   
    <thead>
    
        <tr>
            <th>JobId.</th><th>Company Name</th><th>Skills</th><th>Salary</th><th>Interview Date</th><th>Description</th><th>Candidate Name</th><th>Email</th><th>Mobile</th><th>Resume</th><th>Action</th>
        </tr>
    </thead>
    <tbody>
    <%
        try {
          
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
            Statement st = con.createStatement();
            
          
            
      ResultSet rs = st.executeQuery(" select j.jobid,j.company,j.skills,j.salary,j.doi,j.description,u.fname,u.lname,u.userid,u.mobile,u.filename from job j,user u,appliedjob aj where j.jobid=aj.jobid and u.userid = aj.userid and j.recruiterid = '"+loginid+"' ");  
            // ResultSet rs = st.executeQuery("call displayAppliedJobs() ");
            while (rs.next()) {
        %>
            <%session.putValue("userid",rs.getString(9));%>
        <tr><td><%=rs.getInt(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td><td><%=rs.getString(7)%> <%=rs.getString(8)%></td><td><%=rs.getString(9)%></td><td><%=rs.getString(10)%></td><td> <a href = "DownloadServlet?fileName=<%=rs.getString(11) %>">Download</a></td><td><a href="https://mail.google.com/mail/u/0/?tab=rm#inbox?compose=new"><button type="button" class="btn btn-primary btn-xs">Send Mail</button></a>  &nbsp;|&nbsp;<a href="deleteaj.jsp?jobid=<%=rs.getInt(1)%>"><b><button type="button" class="btn btn-danger btn-xs" onclick= "validation();">Delete</button></b></a></td></tr>
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </tbody>
</table>


    </body>
</html>
