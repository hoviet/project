package com.busBooking.service;

import java.util.List;

import com.busBooking.model.TuyenXe;

public interface ITuyenXeService {
	public List<TuyenXe> dsTuyenXe();
	public TuyenXe layMot(int idDi, int idDen);
}
