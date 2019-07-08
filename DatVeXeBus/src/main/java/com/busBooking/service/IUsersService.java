package com.busBooking.service;

import java.util.List;

import com.busBooking.model.UsersRole;
import com.busBooking.model.Users;

public interface IUsersService {
	public List<Users> findAll();
	public Users findId(int id);
	public UsersRole login(String email, String pass);
	public List<UsersRole> getAllUser(String role);
}
