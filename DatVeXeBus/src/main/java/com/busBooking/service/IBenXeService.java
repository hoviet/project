package com.busBooking.service;

import java.util.List;

import com.busBooking.model.BenXe;

public interface IBenXeService {
	public List<BenXe> danhSach(); 
	public BenXe layMot(int id);
	public List<BenXe> danhSachLoc(int id);
}
