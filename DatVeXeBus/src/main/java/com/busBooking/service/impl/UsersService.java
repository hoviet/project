package com.busBooking.service.impl;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.swing.text.StyledEditorKit.BoldAction;

import com.busBooking.dao.IUsersDAO;
import com.busBooking.model.UsersRole;
import com.busBooking.model.Users;
import com.busBooking.service.IUsersService;
import com.busBooking.utils.SessionUtil;

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

	@Override
	public UsersRole update(Users us, UsersRole uss) {
		if(us.getHoTen().length()==0) {
			us.setHoTen(uss.getHoTen());
		}
		if(us.getSoDienThoai().length()==0) {
			us.setSoDienThoai(uss.getSoDienThoai());
		}
		if(us.getSoCMND()==0) {
			us.setSoCMND(uss.getSoCMND());
		}
		Boolean co = usersDao.update(us);
		if(co == true) {
			uss.setHoTen(us.getHoTen());
			uss.setSoCMND(us.getSoCMND());
			uss.setSoDienThoai(us.getSoDienThoai());
			
		}
		return uss;
	}

	@Override
	public Boolean updatePass(HttpServletRequest req) {
		UsersRole use = (UsersRole) SessionUtil.getInstance().getValue(req, "USER");
		String matKhau = req.getParameter("matKhau");
		UsersRole tam = usersDao.login(use.getEmail(), matKhau);
		Boolean kq = false;
		if(tam != null) {
			tam.setMatKhau(req.getParameter("repeat-password"));
			kq = usersDao.updatePass(tam);
		}		
		return kq;
	}

}
