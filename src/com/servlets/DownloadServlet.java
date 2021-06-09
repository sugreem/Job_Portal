package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


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
import java.nio.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Base64; 
import java.util.Base64; 
import encryption.*;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet(name = "/DownloadServlet", urlPatterns = {"/DownloadServlet"})



public class DownloadServlet extends HttpServlet {
	
	public static int BUFFER_SIZE=1024*100;
	public static final String UPLOAD_DIR="resources";
	public static String fileName = null;
	
	
	
	
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
    	fileName = request.getParameter("fileName");
    	if(fileName==null || fileName.equals(""))
    	{
    		response.setContentType("text/html");
    		
    		response.getWriter().println("<h3>File "+fileName+" is not present...!</h3>");
    		
    	}
    	else
    	{
    		String applicationPath = getServletContext().getRealPath("");
    		String downloadPath=applicationPath + File.separator+UPLOAD_DIR;
    		String filePath = downloadPath+File.separator+fileName;
    		System.out.println(fileName);
    		System.out.println(filePath);
    		System.out.println("fileName:"+fileName);
    		System.out.println("filePath:"+filePath);
    		
    		File file = new File(filePath);
    		OutputStream outStream = null;
    		FileInputStream inputStream = null;
    		
    		if(file.exists())
    		{
    			String mimeType = "application/octet-stream";
    			response.setContentType(mimeType);
    			
    			String headerKey = "Content-Disposition";
    			String headerValue  = String.format("attachment; filename=\"%s\"",file.getName());
    			
    			response.setHeader(headerKey, headerValue);
    			try
    			{
    				outStream = response.getOutputStream();
    				inputStream = new FileInputStream(file);
    				byte[] buffer = new byte[BUFFER_SIZE];
    				int bytesRead=-1;
    				
    				while((bytesRead=inputStream.read(buffer)) != -1)
    				{
    					outStream.write(buffer,0,bytesRead);
    					
    				}
    				
    				
    			}
    			catch(Exception e)
    			{
    				System.out.println(e);
    			}
    			finally
    			{
    				if(inputStream != null)
    				{
    					inputStream.close();
    				}
    				outStream.flush();
    				if(outStream != null)
    				{
    					outStream.close();
    				}
    			}	
    		}
    		else
    		{
    			response.setContentType("text/html");
    			
    			response.getWriter().println("<h3>File" + fileName + "is not present...!</h3>");
    		}
    	}
    	
}}
