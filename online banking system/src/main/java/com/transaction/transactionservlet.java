package com.transaction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/transactionservlet")
public class transactionservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String accountNo = request.getParameter("accountNo");
		boolean istrue;
		
		istrue = TransactionDButil.validate(accountNo);
		
		if (istrue == true) {
			List<Account> accountDetails = TransactionDButil.getAccount(accountNo);
			request.setAttribute("accountDetails", accountDetails);		
			
			RequestDispatcher dis = request.getRequestDispatcher("uservalidate.jsp");
			dis.forward(request, response);
			
		}else {
			out.println("<script type ='text/javascript'>");
			out.println("alert('You Enterd Incorrect Account Number');");
			out.println("location ='transaction.jsp'");
			out.println("</script>");	
		}
		
	}

}
