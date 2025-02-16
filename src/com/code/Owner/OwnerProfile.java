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
import javax.servlet.http.HttpSession;

import com.db.conn.ConnectionProvider;

@WebServlet("/OwnerProfile")
public class OwnerProfile extends HttpServlet {

	private static final long serialVersionUID = 1L;
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
			String password= request.getParameter("password");
			
			HttpSession session=request.getSession();
			String email=session.getAttribute("email").toString();
			System.out.println("Email ID: "+email);
			
			try 
			{
				
				PreparedStatement ps1 = con.prepareStatement("UPDATE `seller_details` SET fname='"+fname+"',lname='"+lname+"',address='"+address+"',city='"+city+"',email='"+email+"',mobile='"+mobile+"',password='"+password+"' where email='"+email+"'");
				int i=ps1.executeUpdate();
				if (i>0) 
				{
					System.out.println("Updation Done");
					response.sendRedirect("OwnerHome.jsp?update");

				}
				else 
				{
					System.out.println("fail");
					response.sendRedirect("OwnerProfile.jsp?fail=done");
				}
			}
			catch (Exception e) 
			{
				System.out.println("Exc "+e);
			}
		}
	}