package com.cus;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		
		isTrue = CustomerDBUtil.insertcustomer(name, email, phone, username, password);
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		if(isTrue == true) {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Insert Successfully');");
			out.println("location='customerinsert.jsp'");
			out.println("</script>"); 
		}
		
		else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Insert Unsuccessfully');");
			out.println("location='customerinsert.jsp'");
			out.println("</script>"); 
			
		}
				
	}

}
