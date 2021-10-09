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


@WebServlet("/updateTransactionServlet")
public class updateTransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		int transactionID = Integer.parseInt(request.getParameter("transactionID"));
		String senderName = request.getParameter("senderName");
		String NIC = request.getParameter("NIC");
		String receiverAcoountNo = request.getParameter("receiverAcoountNo");
		double amount = Double.parseDouble(request.getParameter("amount"));
		
		boolean uptrue;
		
		uptrue = TransactionDButil.updateTransactionDetails(transactionID, senderName, NIC, receiverAcoountNo, amount);
		
		if(uptrue == true) {
			
			List<Transaction> transactionDetails = TransactionDButil.getTransaction();
			request.setAttribute("transactionDetails", transactionDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("showTDetails.jsp");
			dis.forward(request, response);
			
		}else {
			out.println("<script type ='text/javascript'>");
			out.println("alert('Details update unsuccessful');");
			out.println("location ='updateTransactionDetails.jsp'");
			out.println("</script>");	
		}
	
	}

}
