package com.transaction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cancelTransactionServlet")
public class cancelTransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");	
		
		boolean cancletrue;
		
		cancletrue =TransactionDButil.cancleTransaction();
		
		if (cancletrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("cancelTransactionSuccessful.jsp");
			dis.forward(request, response);
			
		}else {
			out.println("<script type ='text/javascript'>");
			out.println("alert('Cancel Transaction Unsuccessful');");
			out.println("location ='senderDetails.jsp'");
			out.println("</script>");
		}
	}

}
