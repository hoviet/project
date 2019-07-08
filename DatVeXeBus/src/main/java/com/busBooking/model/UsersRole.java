package com.busBooking.model;

public class UsersRole extends Users{

	private String role;

	public UsersRole() {
		super();
	}

	public UsersRole(String role) {
		super();
		this.role = role;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
}
