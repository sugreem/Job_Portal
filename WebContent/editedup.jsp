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
 
            { int status=0;
                System.out.println("In editr");
                /* Getting The Value From TextBox  */
                // int sl=Integer.parseInt(request.getParameter("sl"));
                String fname=request.getParameter("fname");
                String lname=request.getParameter("lname");
                String userid=request.getParameter("userid");
                String password=request.getParameter("password");
                String dob=request.getParameter("dob");
                //String email=request.getParameter("email");
                String mobile=request.getParameter("mobile");
                String gender=request.getParameter("gender");
                
                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
                Statement st=con.createStatement();
                
                String sql="update user set fname='"+fname+"', lname='"+lname+"', password='"+password+"', dob='"+dob+"',mobile='"+mobile+"',gender='"+gender+"' where userid='"+userid+"' " ;
                status=st.executeUpdate(sql);
                if(status>0)
                {
                    //session.setAttribute("email",email);
                    session.setAttribute("updated", "Employee has been updated Successfully..");
                    response.sendRedirect("User.jsp");
                }
                else
                {
                    out.println("Oops! Something went wrong...");
                }
            }


%>
</body>
</html>