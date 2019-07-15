package com.busBooking.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.busBooking.model.UsersRole;
import com.busBooking.utils.SessionUtil;

@WebServlet(urlPatterns = { "/admin" })
public class HomeController extends HttpServlet {
	
	private static final long serialVersionUID = 1849870366569919595L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UsersRole us = (UsersRole) SessionUtil.getInstance().getValue(req, "USER");			
		if(us !=null) {			
			if(us.getRole().equals("ADMIN")) {
				RequestDispatcher rd = req.getRequestDispatcher("/views/admin/home.jsp");
				rd.forward(req, resp);
			}else{
				SessionUtil.getInstance().removeValue(req, "USER");
				resp.sendRedirect(req.getContextPath()+"/dang-nhap");
			}				
		}else {
			SessionUtil.getInstance().removeValue(req, "USER");
			resp.sendRedirect(req.getContextPath()+"/dang-nhap");
		}				
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
	}
}
