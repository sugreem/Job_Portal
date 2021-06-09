<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Edit Recruiter</title>
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
             
             String fname,lname,recruiterid,password,dob,company,mobile,gender ;
        %>
        <%
            try{
                recruiterid=request.getParameter("recruiterid");
                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from recruiter where recruiterid='"+recruiterid+"'");
                if(rs.next()){
                    fname=rs.getString(3);
                    lname=rs.getString(4);
                    //recruiterid=rs.getString("recruiterid");
                    password=rs.getString(2);
                    dob=rs.getString(6);
                    company=rs.getString(5);
                    mobile=rs.getString(7);
                    gender=rs.getString(8);
                }
            }catch(Exception e){
                out.println(e);
            }
        %>
         <div style="background-color:#34495e;opacity:1">
   <center>
        <div class="container" style="color:white">
           
            <form action="editedr.jsp" method="post">
                <table class="table table-bordered" style="width: 60%;">
                    <thead>
                        <tr><th colspan="2">
                            
                           <div  style="background-color:black;color:white;height:60px;">
      		<h2><b> Edit Recruiter</b></h2>
      	    </div><br></th>
                    </tr>
                    </thead>
                    <tbody>
                     <tr>
                            <td><b>RecruiterId</b></td>
                            <td><input type="text" name="recruiterid" required="" value="<%=recruiterid %>" read-only class="form-control" readonly></td>
                        </tr>
                        <tr>
                            <td><b>Password:</b></td>
                            <td><input type="text" name="password" required="" value="<%=password %>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>First Name:</b></td>
                            <td><input type="text" name="fname" required="" value="<%=fname %>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>Last Name:</b></td>
                            <td><input type="text" name="lname" required="" value="<%=lname %>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>Company:</b></td>
                            <td><input type="text" name="company" required="" value=<%=company %> class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>Date of Birth:</b></td>
                            <td><input type="text" name="dob" required="" value="<%=dob %>" class="form-control"></td>
                        </tr>
                       
                         <tr>
                            <td><b>Mobile:</b></td>
                            <td><input type="text" name="mobile" required="" value="<%=mobile %>" class="form-control"></td>
                        </tr>
                         <tr>
                            <td><b>Gender:</b></td>
                            <td><input type="radio" name="gender" value="<%=gender %>" required=""  >male
                            <input type="radio" name="gender" value="<%=gender %>" required=""  >female
                            </td>
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
 </div>                      
</body>
</html>

