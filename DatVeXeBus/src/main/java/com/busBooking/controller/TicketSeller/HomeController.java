package com.busBooking.controller.TicketSeller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.busBooking.model.UsersRole;
import com.busBooking.utils.SessionUtil;

@WebServlet(urlPatterns = { "/TicketSeller" })
public class HomeController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 663432941099678908L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UsersRole us = (UsersRole) SessionUtil.getInstance().getValue(req, "USER");
		if (us != null) {
			if (us.getRole().equals("NHANVIEN")) {
				RequestDispatcher rd = req.getRequestDispatcher("/views/TicketSeller/home.jsp");
				rd.forward(req, resp);
			} else {
				resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login");
			}
		} else {
			resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
