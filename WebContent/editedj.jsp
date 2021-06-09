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
                System.out.println("In editedj");
                /* Getting The Value From TextBox  */
                 int jobid=Integer.parseInt(request.getParameter("jobid"));
                String company=request.getParameter("company");
                String skills=request.getParameter("skills");
                String salary=request.getParameter("salary");
                String doi=request.getParameter("doi");
                String recruiterid=request.getParameter("recruiterid");
                String description=request.getParameter("description");
                
                
                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
                Statement st=con.createStatement();
                
                String sql="update job set company='"+company+"', skills='"+skills+"',salary='"+salary+"', doi='"+doi+"', recruiterid='"+recruiterid+"', description='"+description+"' where jobid= '"+jobid+"' " ;
                status=st.executeUpdate(sql);
                if(status>0)
                {
                    
                    session.setAttribute("updated", "Employee has been updated Successfully..");
                    response.sendRedirect("joblist.jsp");
                }
                else
                {
                    out.println("Oops! Something went wrong...");
                }
            }


%>
</body>
</html>