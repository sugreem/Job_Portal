<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
         <script type="text/javascript">
     function validation()
     {
    	 swal("Recruiter Added Successfully");
     }
    
    </script>

</head>
<body>
<div style="background-color:#34495e;opacity:1">
 <center>
        <div class="container" style="color:white">
           
            <form action="addr.jsp" method="post">
                <table class="table table-bordered" style="width: 60%;">
                    <thead>
                        <tr><th colspan="2">
                            
                           <div  style="background-color:black;;color:white;height:60px;">
      		<h2><b> Add Recruiter</b></h2>
      	    </div><br></th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><b>First Name:</b></td>
                            <td><input type="text" name="fname" required="" placeholder="First Name" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>Last Name:</b></td>
                            <td><input type="text" name="lname" required="" placeholder="Last Name" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>RecruiterId(email):</b></td>
                            <td><input type="text" name="recruiterid" required="" placeholder="RecruiterId" class="form-control"></td>
                        </tr>
                        <tr>
                            <td><b>Password:</b></td>
                            <td><input type="password" name="password" required="" placeholder="Password" class="form-control"></td>
                        </tr>
                          <tr>
                            <td><b>Company:</b></td>
                            <td><input type="text" name="company" required="" placeholder="Company" class="form-control"></td>
                        </tr>
                        
                        <tr>
                            <td><b>Date of Birth:</b></td>
                            <td><input type="text" name="dob" required="" placeholder="Date of Birth" class="form-control"></td>
                        </tr>
                        
                       
                         <tr>
                            <td><b>Mobile:</b></td>
                            <td><input type="text" name="mobile" required="" placeholder="Mobile" class="form-control"></td>
                        </tr>
                         <tr>
                            <td><b>Gender:</b></td>
                            <td><input type="radio" name="gender" value="male" required=""  >male
                            <input type="radio" name="gender" value="female" required=""  >female
                            </td>
                        </tr>
                        
                        <tr>
                            <td><input type="reset" value="Reset" class="btn " style="background-color:black;"></td>
                            <td><button class ="btn btn-xs" onclick= "validation();"><input type="submit"  value="Add" class="btn " style="background-color:black;"></button></td>
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