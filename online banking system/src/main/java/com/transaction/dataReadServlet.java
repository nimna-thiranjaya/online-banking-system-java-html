package com.transaction;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/dataReadServlet")
public class dataReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		List<Transaction> transactionDetails = TransactionDButil.getTransaction();
		request.setAttribute("transactionDetails", transactionDetails);		
		
		RequestDispatcher dis = request.getRequestDispatcher("showTDetails.jsp");
		dis.forward(request, response);
	}

}
