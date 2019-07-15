package com.busBooking.controller.TicketSeller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.busBooking.model.Users;
import com.busBooking.model.UsersRole;
import com.busBooking.service.IUsersService;
import com.busBooking.utils.FormUtil;
import com.busBooking.utils.SessionUtil;

@WebServlet(urlPatterns = { "/TicketSeller/info" })
public class infoTicketSeller extends HttpServlet {

	@Inject
	private IUsersService usersService;

	private static final long serialVersionUID = 3499366262324737081L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		UsersRole us = (UsersRole) SessionUtil.getInstance().getValue(req, "USER");
		if (us != null) {
			if (us.getRole().equals("NHANVIEN")) {
				if (action != null && action.equals("changePass")) {
					String sms = req.getParameter("sms");
					String alert = req.getParameter("alert");
					if(sms != null & alert != null) {
						req.setAttribute("sms", sms);
						req.setAttribute("alert", alert);
					}
					RequestDispatcher rd = req.getRequestDispatcher("/views/TicketSeller/changePassTicketSeller.jsp");
					rd.forward(req, resp);
				} else {
					RequestDispatcher rd = req.getRequestDispatcher("/views/TicketSeller/infoTicketSeller.jsp");
					rd.forward(req, resp);
				}
			} else {
				resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login");
			}
		} else {
			resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		if (action != null && action.equals("edit")) {
			UsersRole use = (UsersRole) SessionUtil.getInstance().getValue(req, "USER");
			Users us = FormUtil.toModel(Users.class, req);
			us.setId(use.getId());
			use = usersService.update(us, use);
			SessionUtil.getInstance().putValue(req, "USER", use);
			resp.sendRedirect(req.getContextPath() + "/TicketSeller/info");
		} else if (action != null && action.equals("editPass")) {
			boolean tam = usersService.updatePass(req);
			System.out.print(tam);
			if(tam == true) {
				String sms = "Ok";
				resp.sendRedirect(req.getContextPath() + "/TicketSeller/info?action=changePass&sms="+sms+"&alert=success");
			}else {
				String sms = "wrong password!";
				resp.setCharacterEncoding("UTF-8");
				req.setCharacterEncoding("utf-8");
				resp.sendRedirect(req.getContextPath() + "/TicketSeller/info?action=changePass&sms="+sms+"&alert=danger");
			}
		}

	}

}
