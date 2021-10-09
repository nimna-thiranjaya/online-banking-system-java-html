package com.transaction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/transactionDetailservlet")
public class transactionDetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String senderName = request.getParameter("senderName");
		String nic = request.getParameter("NIC");
		String receiverAcoountNo = request.getParameter("receiverAcoountNo");
		double amount = Double.parseDouble(request.getParameter("amount"));
		
		boolean resval;
		resval = TransactionDButil.InsertTransactionDetails(senderName, nic, receiverAcoountNo, amount);
		
		if(resval == true) {
			RequestDispatcher dis = request.getRequestDispatcher("senderDetails.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis1 = request.getRequestDispatcher("transaction.jsp");
			dis1.forward(request, response);
		}
		
		
	
		
		
	}

}
