package com.cus;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletecustomer")
public class deletecustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String id = request.getParameter("id");
		boolean isTure;
		
		isTure = CustomerDBUtil.deleteCustomer(id);
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		if(isTure == true) {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Delete Successfully');");
			out.println("location='customerinsert.jsp'");
			out.println("</script>"); 
			
		}
		
		else {
			
			 List<Customer> cusDetails = CustomerDBUtil.getCustomer(id);
			 request.setAttribute("cusDetails", cusDetails);
			 
			 RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			 dis.forward(request, response);
			 
		}
		
	}

}
