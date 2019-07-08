package com.busBooking.dao;

import java.util.List;

import com.busBooking.model.Users;
import com.busBooking.model.UsersRole;

public interface IUsersDAO {
	public List<Users> findAll();
	public Users findId(int id);
	public UsersRole login(String user, String pass);
	public Users checkEmail(String email);
	public List<UsersRole> getAllUsers(String role);
}
