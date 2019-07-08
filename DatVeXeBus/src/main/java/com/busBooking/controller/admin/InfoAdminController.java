package com.busBooking.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.busBooking.model.UsersRole;
import com.busBooking.service.IUsersService;
import com.busBooking.utils.SessionUtil;

@WebServlet(urlPatterns = { "/admin/info"})
public class InfoAdminController extends HttpServlet{

	@Inject
	private IUsersService usersService;
	
	private static final long serialVersionUID = 7006130265958269785L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		UsersRole us = (UsersRole) SessionUtil.getInstance().getValue(req, "USER");			
		if(us !=null) {			
			if(us.getRole().equals("ADMIN")) {
				if(action != null && action.equals("changePass")) {
					RequestDispatcher rd = req.getRequestDispatcher("/views/admin/changePassAdmin.jsp");
					rd.forward(req, resp);
				}else {
					RequestDispatcher rd = req.getRequestDispatcher("/views/admin/infoAdmin.jsp");
					rd.forward(req, resp);
				}				
			}else {
				resp.sendRedirect(req.getContextPath()+"/dang-nhap?action=login");
			}				
		}else {
			resp.sendRedirect(req.getContextPath()+"/dang-nhap?action=login");
		}				
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	}

}
