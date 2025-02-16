package com.code.customer;

import java.io.File; 
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.db.conn.ConnectionProvider;


@WebServlet("/CustomerProfile")
public class CustomerProfile extends HttpServlet {
	static Connection con;
	final String UPLOAD_DIRECTORY = "D:/TestingWorkspace/RooMeetR1/WebContent/ProfilePic/";
	static int i = 0;
	
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
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (ServletFileUpload.isMultipartContent(request)) 
		{
			try 
			{
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				System.out.println("Initialization");
				String FileName = "";
				String FileExtention = "";
				long FileSize = 0;

				for (FileItem item1 : multiparts)
				{
					if (!item1.isFormField()) 
					{
						System.out.println("Call Algorithm");
						String name = new File(item1.getName()).getName();
						item1.write(new File(UPLOAD_DIRECTORY + File.separator+name));
						FileName = item1.getName();
						FileExtention = item1.getContentType();
						FileSize = item1.getSize();
					}
				}

				/*String name= request.getParameter("name");
				String address = request.getParameter("address");
				String mobile= request.getParameter("mobile");
				HttpSession session=request.getSession();
				String email=session.getAttribute("email").toString();
				System.out.println("Email ID: "+email);*/
				
				String name	="",address="",mobile="",email="";
				
				for (FileItem item : multiparts)
				{
					if ((item.getFieldName()).equals("name"))
					{
						name = (String) item.getString();
					}
				}

				for (FileItem item : multiparts)
				{
					if ((item.getFieldName()).equals("address"))
					{
						address = (String) item.getString();
					}
				}

				for (FileItem item : multiparts)
				{
					if ((item.getFieldName()).equals("mobile")) 
					{
						mobile = (String) item.getString();
					}
				}

				for (FileItem item : multiparts)
				{
					if ((item.getFieldName()).equals("email")) 
					{
						email = (String) item.getString();
					}
				}
				
				System.out.println("FileName " + FileName);
				System.out.println("File Extension " + FileExtention);
				System.out.println("File Size " + FileSize);

				HttpSession session=request.getSession();
				String email_id=session.getAttribute("email").toString();
				System.out.println("Email ID: "+email);
				
				DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
				Date dateobj = new Date();
				String c_date = df.format(dateobj);
				System.out.println("C Date " + c_date);
				
				try 
				{
					PreparedStatement ps1 = con.prepareStatement("UPDATE `customer_details` SET name='"+name+"', address='"+address+"', email='"+email+"', mobile='"+mobile+"', file_name='"+FileName+"' where email='"+email+"'");
					System.out.println("Query: "+ps1);
					int i=ps1.executeUpdate();
					if (i>0)  
					{
						System.out.println("Updation Done");
						response.sendRedirect("CustomerHome.jsp?Don");
					} else 
					{
						System.out.println("Photo Not Insert Something Wrong");
						response.sendRedirect("Profile.jsp?fail=done");
					}
				} 
				catch (Exception e) 
				{
					System.out.println("Exception e" +e);
				}
			}
			catch (Exception ex) {
				System.out.println("Exception e" +ex);
			}
		}
		else 
		{
			System.out.println("Condition False");
			response.sendRedirect("Profile.jsp?fail=done");
		}
	}
}




/*import java.io.IOException; 
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

@WebServlet("/CustomerProfile")
public class CustomerProfile extends HttpServlet {

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
		
			String name= request.getParameter("name");
			String address = request.getParameter("address");
			String mobile= request.getParameter("mobile");
			
			HttpSession session=request.getSession();
			String email=session.getAttribute("email").toString();
			System.out.println("Email ID: "+email);
			
			try 
			{
				
				PreparedStatement ps1 = con.prepareStatement("UPDATE `customer_details` SET name='"+name+"', address='"+address+"', email='"+email+"', mobile='"+mobile+"' where email='"+email+"'");
				int i=ps1.executeUpdate();
				if (i>0) 
				{
					System.out.println("Updation Done");
					response.sendRedirect("CustomerHome.jsp?Don");

				}
				else 
				{
					System.out.println("fail");
					response.sendRedirect("Profile.jsp?fail=done");
				}
			}
			catch (Exception e) 
			{
				System.out.println("Exc "+e);
			}
		}
	}*/