package com.busBooking.controller.web;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.busBooking.model.BenXe;
import com.busBooking.model.TuyenXe;
import com.busBooking.model.UsersRole;
import com.busBooking.service.IBenXeService;
import com.busBooking.service.ITuyenXeService;
import com.busBooking.service.IUsersService;
import com.busBooking.utils.FormUtil;
import com.busBooking.utils.SessionUtil;

@WebServlet(urlPatterns = { "/trang-chu", "/dang-nhap","/thoat" })
public class HomeController extends HttpServlet {

	@Inject
	private IUsersService usersService;
	@Inject
	private IBenXeService benXe;
	@Inject
	private ITuyenXeService tuyen;

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		List<BenXe> dsDiemDi = benXe.danhSach();
		List<TuyenXe> dsTuyenXe = tuyen.dsTuyenXe();
		SessionUtil.getInstance().putValue(req, "DSBenXe", dsDiemDi);
		SessionUtil.getInstance().putValue(req, "DSTuyenXe", dsTuyenXe);
		if (action != null && action.equals("login")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(req, resp);
		} else if (action != null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(req, "USER");
			resp.sendRedirect(req.getContextPath()+"/trang-chu");
		} else {
			UsersRole us = (UsersRole) SessionUtil.getInstance().getValue(req, "USER");
			if(us != null) {
				if(us.getRole().equals("ADMIN")) {
					RequestDispatcher rd = req.getRequestDispatcher("/views/admin/home.jsp");
					rd.forward(req, resp);
				}else {
					RequestDispatcher rd = req.getRequestDispatcher("/views/web/Booking.jsp");
					rd.forward(req, resp);
				}			
			}else {
				RequestDispatcher rd = req.getRequestDispatcher("/views/web/home.jsp");
				rd.forward(req, resp);
			}		
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action != null && action.equals("login")) {
			UsersRole user = FormUtil.toModel(UsersRole.class, req);			
			user = usersService.login(user.getEmail(), user.getMatKhau());
			if(user != null) {
				SessionUtil.getInstance().putValue(req, "USER", user);
				if(user.getRole().equals("ADMIN")) {
					resp.sendRedirect(req.getContextPath()+"/admin");
				}else {
					resp.sendRedirect(req.getContextPath()+"/trang-chu");
				}
			}else {
				resp.sendRedirect(req.getContextPath()+"/trang-chu");
			}
			
			
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(req, resp);
		}
	}

}
