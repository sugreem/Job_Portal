<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Edit Job</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
             <script type="text/javascript">
     function validation()
     {
    	 swal("Record Updated Successfully");
     }
    
    </script>
    </head>
    <body>
     
        <%!
             int jobid;
             String company,skills,salary,doi,recruiterid,description ;
        %>
        <%
            try{
                jobid=Integer.parseInt(request.getParameter("jobid"));
                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from job where jobid= '"+jobid+"' ");
                if(rs.next()){
                	recruiterid=rs.getString("recruiterid");
                    company=rs.getString("company");
                    skills=rs.getString("skills");
                    salary=rs.getString("salary");
                    doi=rs.getString("doi");
                    
                    description=rs.getString("description");
                   
                }
            }catch(Exception e){
                out.println(e);
            }
        %>
          <div style="background-color:#34495e;opacity:1">
   <center>
        <div class="container" style="color:white">
           
            <form action="editedj.jsp" method="post">
                <table class="table table-bordered" style="width: 60%;">
                    <thead>
                        <tr><th colspan="2">
                            
                            <div  style="background-color:black;color:white;height:60px;">
      		<h2><b> Edit Job</b></h2>
      	    </div><br></th>
                    </tr>
                    </thead>
                    <tbody>
                     <tr>
                            <td><b>JobId:</b></td>
                            <td><input type="integer" name="jobid" required="" value="<%=jobid %>" read-only class="form-control" readonly></td>
                        </tr>
                        <tr>
                            <td><b>RecruiterId:</b></td>
                            <td><input type="text" name="recruiterid" required="" value="<%=recruiterid %>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>Company:</b></td>
                            <td><input type="text" name="company" required="" value="<%=company %>" class="form-control"></td>
                        </tr>
                            <tr>
                            <td><b>Skills:</b></td>
                            <td><input type="text" name="skills" required="" value="<%=skills %>" class="form-control"></td>
                        </tr>
                        
                        <tr>
                            <td><b>Salary:</b></td>
                            <td><input type="text" name="salary" required="" value="<%=salary %>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>DOI:</b></td>
                            <td><input type="password" name="doi" required="" value=<%=doi %> class="form-control"></td>
                        </tr>
                    
                        
                         <tr>
                            <td><b>Description:</b></td>
                            <td><input type="text" name="description" required="" value="<%=description %>" class="form-control"></td>
                        </tr>
                       
                    
                        
                        <tr>
                           <td><input type="reset" value="Reset" class="btn " style="background-color:black;"></td>
                                  <td><button class ="btn btn-xs" onclick= "validation();"><input type="submit"  value="Update" class="btn " style="background-color:black;"></button></td>
                         <% for( int i=0;i<=1000000000;i++)
                       {}
                       
                       %>
                        </tr>
                    </tbody>
                </table>
               
            </form>
        </div>
    </center>
                       
</body>
</html>

