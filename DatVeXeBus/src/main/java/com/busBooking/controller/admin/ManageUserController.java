package com.busBooking.controller.admin;

import java.io.IOException;
import java.util.List;

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

@WebServlet(urlPatterns = { "/admin/manage"})
public class ManageUserController extends HttpServlet{

	@Inject
	private IUsersService usersService;
	
	private static final long serialVersionUID = 8940300980480000483L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");		
		if (action != null && action.equals("listUser")) {
			List<UsersRole> lt = usersService.getAllUser("NHANVIEN");
			if(lt!= null) {
				SessionUtil.getInstance().putValue(req, "ListUsers", lt);
				RequestDispatcher rd = req.getRequestDispatcher("/views/admin/ListUser.jsp");
				rd.forward(req, resp);
			}		
		}else if (action != null && action.equals("addUser")){
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/addUser.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	}

}
