package com.FinancialManager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateManagerServlet")
public class UpdateManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Fid");
		String Name = request.getParameter("Fname");
		String Email = request.getParameter("Femail");
		String Username = request.getParameter("Fusername");
		String Password = request.getParameter("Fpassword");
	
	boolean IsTrue;
	
	IsTrue = FinancialManagerDBUtil.UpdateManager(id, Name, Email, Username, Password);
	
	if(IsTrue == true) {
		
		List<FinancialManager> FMDetails = FinancialManagerDBUtil.getFinancialManagerDetails(id);
		request.setAttribute("FDetails", FMDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		dis.forward(request, response);
	
	}else {
		
		List<FinancialManager> FMDetails = FinancialManagerDBUtil.getFinancialManagerDetails(id);
		request.setAttribute("FDetails", FMDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		dis.forward(request, response);

	}
	 
	}

}
