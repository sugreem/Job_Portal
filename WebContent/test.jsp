<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>




<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js" integrity="sha384-u/bQvRA/1bobcXlcEYpsEdFVK/vJs3+T+nXLsBYJthmdBuavHvAW6UsmqO2Gd/F9" crossorigin="anonymous"></script>


</head>
<body>

 <div class="container">
	
     <form action="login.jsp" method="post">
      <div class="form-group col-lg-6 m-auto">
        <div class="container">
          
        	<div class="card-header col-lg-6-auto " style="background-color:green;">
      		<h3><b>Login</b></h3>
      	    </div><br>
      	    
            <b>LoginId</b><input type="text" name="loginid" class="form-control" required>
            <b>Password</b> <input type="password" name="password" class="form-control"   required><br>
            <input type ="submit" value="Login" class="btn btn-outline-success" ><br>
           <p class="text-danger">
           <%
            String user = request.getParameter("user");
           %>
           <% if(user!=null)
              {
        	   out.println(user);
              }
           %>
            </p> 		
       </div>
      </div>
    </form>
  </div>


</body>
</html>