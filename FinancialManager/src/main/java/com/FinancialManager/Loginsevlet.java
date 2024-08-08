package com.FinancialManager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Loginsevlet")
public class Loginsevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("username");
		String Password = request.getParameter("passwrd");
		boolean IsTrue;
		
		
		IsTrue = FinancialManagerDBUtil.validate(userName, Password);
		
		if(IsTrue==true) {
			
			List<FinancialManager> FDetails =FinancialManagerDBUtil.getManager(userName);
			request.setAttribute("FDetails", FDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp"); 
			dis.forward(request, response);
			
		}else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('your username or password is incorrect');");
			out.println("location='Login.jsp'");
			out.println("</script>");
			
		}
		
		
		
	}

}
