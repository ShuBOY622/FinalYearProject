package com.code.Owner;

import java.io.IOException; 
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.conn.ConnectionProvider;

@WebServlet("/OwnerRegistration")
public class OwnerRegistration extends HttpServlet {
	static Connection con;
	public void init(ServletConfig config) throws ServletException 
	{
		try 
		{
			con=ConnectionProvider.getConnection();
		} 
		catch (Exception e) 
		{
			System.out.println("Exception "+e);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		String fname= request.getParameter("fname");
		String lname= request.getParameter("lname");
		String address = request.getParameter("address");
		String city= request.getParameter("city");
		String mobile= request.getParameter("mobile");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		System.out.println("Email ID: "+email);
		System.out.println("Password :  "+password);
		
		try 
		{
			
			PreparedStatement ps1 = con.prepareStatement("INSERT INTO `seller_details`(`fname`, `lname`, `address`, `city`, `email`, `mobile`, `password`) "
					+ "VALUES ('"+fname+"','"+lname+"', '"+address+"','"+city+"','"+email+"','"+mobile+"','"+password+"')");
			int i=ps1.executeUpdate();
			if (i>0) 
			{
				System.out.println("Registration Done");
				response.sendRedirect("OwnerLogin.jsp?Done");

			}
			else 
			{
				System.out.println("Login fail");
				response.sendRedirect("OwnerRegistration.jsp?fail=done");
			}
		}
		catch (Exception e) 
		{
			System.out.println("Exc "+e);
		}
	}
}