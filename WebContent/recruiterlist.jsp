
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

  <script type ="text/javascript" styel="color:white">
   $(document).ready(function(){
	 $("#mytable").DataTable();
	   
   });
    </script> 
     <script type="text/javascript">
     function validation()
     {
    	 swal("Record Deleted Successfully");
     }
    
    </script>
       
    </head>
    <body>
    <%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
    

          <div class="card-header col-lg-4-auto " style="background-color:#34495e;height:60px;color:white">
      		<h2><b> <center>Recruiter list</center></b></h2>
      	    </div><br>  
   
   
    
    
        
        <table id ="mytable" class="table table-bordered table-striped table-hover" >         
 
    <thead>
        <tr ">
            <th>RecruiterId</th><th>Password</th><th>First name</th><th>Last name</th><th>Company</th><th>DOB</th><th>Mobile</th><th>Gender</th><th>Action</th>
        </tr>
    </thead>
    <tbody>
    
    <%
        try {
          
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
            Statement st = con.createStatement();
            
          
                    ResultSet rs = st.executeQuery("select * from recruiter"); //ResultSet rs = st.executeQuery("call displayR()");
            while (rs.next()) {
        %>

        <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td><td><%=rs.getString(7)%></td><td><%=rs.getString(8)%></td><td><a href="editr.jsp?recruiterid=<%=rs.getString(1)%>"><b><button type="button" class="btn btn-primary btn-xs">Edit</button></b></a>&nbsp;|&nbsp;<a href="deleter.jsp?recruiterid=<%=rs.getString(1)%>"><b><button type="button" class="btn btn-danger btn-xs" onclick= "validation();">Delete</button></b></a></td></tr>
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
