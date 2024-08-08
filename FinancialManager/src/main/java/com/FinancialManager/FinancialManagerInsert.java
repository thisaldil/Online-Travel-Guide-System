package com.FinancialManager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FinancialManagerInsert")
public class FinancialManagerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String username= request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean IsTrue;  
		
		
		IsTrue=FinancialManagerDBUtil.InsertManager(name, email, username, password);
		
		if(IsTrue == true) {
			RequestDispatcher dis =request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
