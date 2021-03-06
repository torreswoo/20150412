package com.school.vo;

import java.util.List;

public class AccountsVo {
	
	private long id;
	private long users_id;
	private String account_number;
	private int amount;
	private List<AccountDetailsVo> accountDetailsList;
	
	public List<AccountDetailsVo> getAccountDetailsList() {
		return accountDetailsList;
	}
	public void setAccountDetailsList(List<AccountDetailsVo> accountDetailsList) {
		this.accountDetailsList = accountDetailsList;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getUsers_id() {
		return users_id;
	}
	public void setUsers_id(long users_id) {
		this.users_id = users_id;
	}
	public String getAccount_number() {
		return account_number;
	}
	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}

}
