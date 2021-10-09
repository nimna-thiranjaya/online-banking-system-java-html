package com.transaction;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TransactionDButil {
	
	private static boolean successval;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet res = null;
    
	
	
	public static boolean validate(String accountNo) {
		try {
			conn  = Dbconnect.getConnection();
			stmt = conn.createStatement();
			
			String sql = "select *  from account where accountNo='"+accountNo+"'";
			res = stmt.executeQuery(sql);
			
			if(res.next()) {
				successval = true;
			}else {
				successval = false;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return successval;
		
	}
	
	public static List<Account> getAccount(String accountNo){
		ArrayList<Account> account = new ArrayList<>();
		
		try {
			conn = Dbconnect.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from account where accountNo='"+accountNo+"'";
			res= stmt.executeQuery(sql);
			
			while(res.next()) {
				
				int acountID = res.getInt(1);
				String holderName = res.getString(2);
				String accountno = res.getString(3);
				String NIC  = res.getString(4);
				double balance  = res.getDouble(5);
				
				Account acc1 = new Account(acountID,holderName,accountno,NIC,balance);
				
				account.add(acc1);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return account;
	}
	
	public static boolean InsertTransactionDetails(String senderName,String nic, String receiverAcoountNo,double amount) {
		boolean successval = false;
		conn  = Dbconnect.getConnection();
		
		try {
			stmt = conn.createStatement();
			
			String sql ="insert into transaction values(0,'"+senderName+"','"+nic+"','"+receiverAcoountNo+"','"+amount+"')";
			int res = stmt.executeUpdate(sql);
			
			if(res > 0) {
				successval = true;
			}else {
				successval = false;
			}	
		}catch(Exception e) {
			
			e.printStackTrace();
		}  
		return successval;
	}
	
	public static List<Transaction> getTransaction(){
		ArrayList<Transaction> transaction = new ArrayList<>();
		
		try {
			conn = Dbconnect.getConnection();
			stmt = conn.createStatement();
			String sql = "SELECT * FROM transaction ORDER BY transactionID DESC LIMIT 1";
			res= stmt.executeQuery(sql);
			
			while(res.next()) {
				
				int transactionID = res.getInt(1);
				String senderName = res.getString(2);
				String NIC= res.getString(3);
				String receiverAcoountNo = res.getString(4);
				double amount  = res.getDouble(5);
				
				Transaction T1 = new Transaction(transactionID,senderName,NIC,receiverAcoountNo,amount);
				transaction.add(T1);	
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return transaction;
	}
	
	public static boolean updateTransactionDetails(int transactionID, String senderName, String NIC, String receiverAcoountNo, double amount) {
		boolean upsuccess = true;
		
		try {
			conn = Dbconnect.getConnection();
			stmt = conn.createStatement();
			
			String sql = "update transaction set senderName='"+senderName+"',NIC ='"+NIC+"',receiverAcoountNo='"+receiverAcoountNo+"',amount='"+amount+"' where transactionID='"+transactionID+"'";
			
			int res = stmt.executeUpdate(sql);
			
			if(res > 0) {
				upsuccess =true;
			}else {
				upsuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	
	
		return upsuccess;
	}

	
	public static boolean cancleTransaction() {
		try {
			conn = Dbconnect.getConnection();
			stmt = conn.createStatement();
			
			String sql ="delete from transaction order by transactionID desc limit 1";
			int res = stmt.executeUpdate(sql);
			
			if(res > 0) {
				successval =true;
				
			}else {
				successval =false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return successval;
		
	}
}
