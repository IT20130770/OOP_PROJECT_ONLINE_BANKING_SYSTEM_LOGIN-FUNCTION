package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String NIC = request.getParameter("NIC");
		String CustomerName = request.getParameter("customerName");
		String AccountNumber = request.getParameter("accountNumber");
		String PhoneNumber = request.getParameter("phoneNumber");
		String Email = request.getParameter("email");
		String UserName = request.getParameter("username");
		String Password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updatecustomer(id,NIC,CustomerName,AccountNumber, PhoneNumber,  Email,  UserName, Password);
			
		
		if(isTrue == true) {
			

			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
