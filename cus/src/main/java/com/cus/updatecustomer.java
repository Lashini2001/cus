package com.cus;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class updatecustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updatecustomer(id, name, email, phone, username, password);
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		
		if(isTrue == true) {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Update Successfully');");
			out.println("location='log.jsp'");
			out.println("</script>"); 
			
		}
		
		else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Delete Unsuccessfully');");
			out.println("location='deletecustomer.jsp'");
			out.println("</script>");
			 
		
		}
		
		}
	}


