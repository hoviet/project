package com.busBooking.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.busBooking.dao.IUsersDAO;
import com.busBooking.model.UsersRole;
import com.busBooking.model.Users;
import com.busBooking.service.IUsersService;

public class UsersService implements IUsersService {
	@Inject
	private IUsersDAO usersDao;
		
	@Override
	public List<Users> findAll() {
		
		return usersDao.findAll();
	}

	@Override
	public Users findId(int id) {

		return usersDao.findId(id);
	}

	@Override
	public UsersRole login(String email, String pass) {		
		if(email.length()==0 || pass.length()==0) {
			UsersRole us = new UsersRole();
			return us;
		}
		return usersDao.login(email, pass);
	}

	@Override
	public List<UsersRole> getAllUser(String role){	
		return usersDao.getAllUsers(role);
	}

}
