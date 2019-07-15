package com.busBooking.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.busBooking.model.UsersRole;
import com.busBooking.model.Users;

public interface IUsersService {
	public List<Users> findAll();
	public Users findId(int id);
	public UsersRole login(String email, String pass);
	public List<UsersRole> getAllUser(String role);
	public UsersRole update(Users us, UsersRole uss);
	public Boolean updatePass(HttpServletRequest req);
}
