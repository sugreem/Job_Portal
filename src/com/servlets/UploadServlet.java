package com.servlets;

import java.io.IOException;
import java.sql.*;

import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;



import java.io.*;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Base64; 
import java.util.Base64; 
import encryption.*;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet(name = "/UploadServlet", urlPatterns = {"/UploadServlet"})
@MultipartConfig(fileSizeThreshold = 1024*1024*10,
     maxFileSize = 1024*1024*1000,
     maxRequestSize = 1024*1024*1000)


public class UploadServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	PrintWriter out = null;
	Connection con = null;
	PreparedStatement ps = null;
	HttpSession session=null;
	
	
	
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/plain;charset=UTF-8");
		try
		{
			out = response.getWriter();
			session = request.getSession(false);
			String folderName="resources";
			String uploadPath = request.getServletContext().getRealPath("")+folderName;
			
			File dir = new File(uploadPath);
			if(!dir.exists())
			{
				dir.mkdirs();
			}
			
			HttpSession session = request.getSession();
			String userid = request.getParameter("userid");
			session.setAttribute("loginid",userid);
			String pass = request.getParameter("password");
			String password = Password.encrypt(pass);
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String dob = request.getParameter("dob");
			String mobile = request.getParameter("mobile");
			String gender = request.getParameter("gender");
			
			
			Part filePart = request.getPart("file");
			
			String fileName = filePart.getSubmittedFileName();
			String path = folderName+File.separator+fileName;
			
			Timestamp added_date = new Timestamp (System.currentTimeMillis());
			
			System.out.println("fileName: "+fileName);
			System.out.println("Path: "+uploadPath);
			
			
			InputStream is = filePart.getInputStream();
			Files.copy(is,Paths.get(uploadPath + File.separator+fileName),StandardCopyOption.REPLACE_EXISTING);
			
			try
			{
			
				System.out.println("connection done");
				System.out.println("connection done");
				System.out.println(added_date);
				/*String sql = "insert into employee(firstname,lastname,filename,path,added_date) values(?,?,?,?,?)";
				ps = con.prepareStatement(sql);
				ps.setString(1, firstName);
				ps.setString(2, lastName);
				ps.setString(3, fileName);
				ps.setString(4, path);
				ps.setTimestamp(5, added_date);
				
				int status = ps.executeUpdate();*/
				
				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","skc75755");
				Statement st = con.createStatement();
				System.out.println("connection done");

				
				

				//int status =st.executeUpdate("insert into employee (firstname,lastname,filename,path,added_date) values('"+firstName+"','"+lastName+"','"+fileName+"','"+path+"','"+added_date+"')");
				
				int status =st.executeUpdate("insert into user(userid,password,fname,lname,dob,mobile,gender,filename,path,added_date) values('"+userid+"','"+password+"','"+fname+"','"+lname+"','"+dob+"','"+mobile+"','"+gender+"','"+fileName+"','"+path+"','"+added_date+"')");
				
				if(status>0)
				{
					response.sendRedirect("Indexx.jsp");
					//session.setAttribute("fileName", fileName);
					//String msg = ""+fileName+"file uploaded successfully....";
					//request.setAttribute("msg", msg);
					//RequestDispatcher rd = request.getRequestDispatcher("/success.jsp");
					//rd.forward(request,response);
					
					System.out.println("file uploaded successfully....");
					System.out.println("uploaded path:" +uploadPath);
					
					
				}
			}
			catch(Exception e)
			{
				System.out.println(e);
				out.println("already registered");
			}
			finally
			{
				try
				{
				  if(ps!=null)
					  ps.close();
				  
				  if(con!=null)
					  con.close();
					
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}
