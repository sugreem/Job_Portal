l><%@page import="java.sql.*"%>
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
    </head>
    <body>
     
        <%!
             
             String userid,fname,lname,loginid,password,dob,email,mobile,gender ;
        %>
        <%
            try{
            	 userid=session.getAttribute("loginid").toString();
                
                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from user where userid= '"+userid+"' ");
                if(rs.next()){
                
                	//userid = rs.getString("userid");
                    fname=rs.getString("fname");
                    lname=rs.getString("lname");
                   
                    password=rs.getString("password");
                    dob=rs.getString("dob");
                   
                    mobile=rs.getString("mobile");
                    gender=rs.getString("gender");
                }
            }catch(Exception e){
                System.out.println(e);
            }
        %>
        <div style="background-color:#34495e;opacity:1">
   <center>
        <div class="container" style="color:white">
           
            <form action="editedup.jsp" method="post">
                <table class="table table-bordered" style="width: 60%;color:white">
                    <thead>
                        <tr><th colspan="2">
                            
                     <div  style="background-color:black;color:white;height:60px;">
      		<h2><b> My Profile</b></h2>
      	    </div><br></th>
                    </tr>
                    </thead>
                    <tbody>
                    
                     <tr>
                            <td><b>UserId</b></td>
                            <td><input type="text" name="userid" required="" value="<%=userid %>" class="form-control" readonly></td>
                        </tr>
                   
                        <tr>
                            <td><b>Password</b></td>
                            <td><input type="text" name="password" required="" value="<%=password %>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>First Name:</b></td>
                            <td><input type="text" name="fname" required="" value="<%=fname %>" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>Last Name</b></td>
                            <td><input type="text" name="lname" required="" value="<%=lname %>" class="form-control"></td>
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
                          
                          <td><input type="reset" value="Reset" class="btn " style="background-color:black;color:white"></td>
                            <td><input type="submit"  value="Update" class="btn " style="background-color:black;color:white"></td>
                        </tr>
                    </tbody>
                </table>
               
            </form>
        </div>
    </center>
     </div>                  
</body>
</html>

