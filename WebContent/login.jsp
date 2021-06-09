<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="encryption.*"%>

	<%
		try {
			String loginid = request.getParameter("loginid");
			String pass = request.getParameter("password");
			String password = Password.encrypt(pass);

			session.setAttribute("loginid", loginid);
			session.setAttribute("password", password);

			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root",
					"skc75755");
			Statement st = con.createStatement();
			ResultSet rs1 = st.executeQuery("select * from admin where adminid = '" + loginid + "'");

			int r1 = 0;
			int r2 = 0;
			int r3 = 0;

			if (rs1.next()) {
				r1 = 1;
				if (rs1.getString(1).equals("" + loginid + "") && rs1.getString(2).equals(password)) {
					out.println("alert(logged in successfully)");
					response.sendRedirect("Admin.jsp");
				}

				else {
					response.sendRedirect("Loginn.jsp?user=Incorrect loginId or password");
					System.out.println("invalid loginId or password");
				}
			}

			ResultSet rs2 = st.executeQuery("select * from recruiter where recruiterid = '" + loginid + "'");
			if (rs2.next()) {
				r2 = 1;
				if (rs2.getString(1).equals("" + loginid + "") && rs2.getString(2).equals(password)) {
					response.sendRedirect("Recruiter.jsp");
				}

				else {
					response.sendRedirect("Loginn.jsp?user=Incorrect loginId or password");
					System.out.println("invalid loginId or password");
				}
			}

			ResultSet rs3 = st.executeQuery("select * from user where userid = '" + loginid + "'");
			if (rs3.next()) {
				r3 = 1;
				if (rs3.getString(1).equals("" + loginid + "") && rs3.getString(2).equals(password)) {
					response.sendRedirect("User.jsp");
				} else {
					response.sendRedirect("Loginn.jsp?user=Incorrect loginId or password");
					System.out.println("invalid loginId or password");
				}
			}

			if (r1 == 0 && r2 == 0 && r3 == 0) {
				response.sendRedirect("Loginn.jsp?user=Incorrect loginId or password");
				System.out.println("invalid loginId or password");

			}

		} catch (Exception e) {
			System.out.println(e);
		}
	%>


</body>
</html>