package com.busBooking.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.busBooking.dao.IBenXeDAO;
import com.busBooking.model.BenXe;
import com.busBooking.service.IBenXeService;

public class BenXeService implements IBenXeService{

	@Inject
	private IBenXeDAO benXe;
	@Override
	public List<BenXe> danhSach() {		
		return benXe.danhSach();
	}

}
