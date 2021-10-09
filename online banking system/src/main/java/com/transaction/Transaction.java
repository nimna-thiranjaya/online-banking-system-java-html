package com.transaction;

public class Transaction {
	private int transactionID;
	private String senderName;
	private String NIC;
	private String receiverAcoountNo;
	private double amount;
	
	public Transaction(int transactionID, String senderName, String NIC, String receiverAcoountNo, double amount) {

		this.transactionID = transactionID;
		this.senderName = senderName;
		this.NIC = NIC;
		this.receiverAcoountNo = receiverAcoountNo;
		this.amount = amount;
	}

	public int getTransactionID() {
		return transactionID;
	}

	public String getSenderName() {
		return senderName;
	}

	public String getNIC() {
		return NIC;
	}

	public String getReceiverAcoountNo() {
		return receiverAcoountNo;
	}


	public double getAmount() {
		return amount;
	}
	
}
