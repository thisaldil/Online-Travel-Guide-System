package com.FinancialManager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteManagerServlet")
public class DeleteManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Fid");
		boolean IsTrue =  FinancialManagerDBUtil.deletemanager(id);
		
		if(IsTrue==true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("FinancialManagerInsert.jsp");
			dispatcher.forward(request, response);
		}else {
			List<FinancialManager> FDetails =  FinancialManagerDBUtil.getFinancialManagerDetails(id);
			request.setAttribute("FDetails", FDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
