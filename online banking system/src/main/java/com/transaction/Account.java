package com.transaction;

public class Account {
	private int acountID;
	private String holderName;
	private String accountNo;
	private String NIC;
	private double balance;
	
	public Account(int acountID, String holderName, String accountNo, String nIC, double balance) {
		this.acountID = acountID;
		this.holderName = holderName;
		this.accountNo = accountNo;
		NIC = nIC;
		this.balance = balance;
	}

	public int getAcountID() {
		return acountID;
	}

	public String getHolderName() {
		return holderName;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public String getNIC() {
		return NIC;
	}

	public double getBalance() {
		return balance;
	}



}
