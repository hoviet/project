package com.busBooking.controller.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.busBooking.dao.IChuyenXeDAO;
import com.busBooking.model.BenXe;
import com.busBooking.model.ChuyenXe;
import com.busBooking.model.TuyenXe;
import com.busBooking.model.UsersRole;
import com.busBooking.service.IBenXeService;
import com.busBooking.service.ITuyenXeService;
import com.busBooking.utils.FormUtil;
import com.busBooking.utils.SessionUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(urlPatterns = { "/dat-ve", })
public class TickedController extends HttpServlet {

	@Inject
	private IBenXeService benXe;
	@Inject
	private ITuyenXeService tuyen;
	@Inject
	private IChuyenXeDAO chuyenXe;

	private static final long serialVersionUID = 4753239920799369733L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action != null && action.equals("diemDen")) {
			String id = req.getParameter("id");
			List<BenXe> dsDiemDen = benXe.danhSachLoc(Integer.parseInt(id));
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(dsDiemDen);
			resp.setCharacterEncoding("UTF-8");
			PrintWriter out = resp.getWriter();
			out.append(json);
			out.close();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action != null && action.equals("datVe")) {
			TuyenXe tuyenXe = FormUtil.toModel(TuyenXe.class, req);
			tuyenXe = tuyen.layMot(tuyenXe.getIdBenXeDi(), tuyenXe.getIdBenXeDen());
			if (tuyenXe != null) {
				BenXe benDi = benXe.layMot(tuyenXe.getIdBenXeDi());
				BenXe benDen = benXe.layMot(tuyenXe.getIdBenXeDen());
				List<ChuyenXe> ltChuyenXe = chuyenXe.getListId(tuyenXe.getId());
				SessionUtil.getInstance().putValue(req, "DiemDi", benDi);
				SessionUtil.getInstance().putValue(req, "DiemDen", benDen);
				SessionUtil.getInstance().putValue(req, "ChuyenXe", ltChuyenXe);
				SessionUtil.getInstance().putValue(req, "TuyenXe", tuyenXe);
				RequestDispatcher rd = req.getRequestDispatcher("/views/web/Booking.jsp");
				rd.forward(req, resp);
			}
			RequestDispatcher rd = req.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(req, resp);
		} else if (action != null && action.equals("diemDi")) {
			System.out.print("SSSSS" + FormUtil.toModel(UsersRole.class, req));
			List<BenXe> dsDiemDi = benXe.danhSach();
			RequestDispatcher rd = req.getRequestDispatcher("/views/web/Booking.jsp");
			rd.forward(req, resp);
		}
	}
}
