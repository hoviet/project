package com.busBooking.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.busBooking.dao.ITuyenXeDAO;
import com.busBooking.model.TuyenXe;
import com.busBooking.service.ITuyenXeService;

public class TuyenXeService implements ITuyenXeService{

	@Inject
	private ITuyenXeDAO tuyenXe;
	@Override
	public List<TuyenXe> dsTuyenXe() {
		
		return tuyenXe.danhSach();
	}
	@Override
	public TuyenXe layMot(int idDi, int idDen) {
		
		return tuyenXe.layMot(idDi, idDen);
	}
	
}
