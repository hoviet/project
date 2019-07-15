package com.busBooking.dao;

import java.util.List;

import com.busBooking.model.TuyenXe;

public interface ITuyenXeDAO {
	public List<TuyenXe> danhSach();
	public List<TuyenXe> danhSach(int idDi);
	public TuyenXe layMot(int idDi,int idDen);
}
