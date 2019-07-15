package com.busBooking.dao;

import java.util.List;

import com.busBooking.model.BenXe;

public interface IBenXeDAO {
	public List<BenXe> danhSach();
	public BenXe layMot(int id);
}
