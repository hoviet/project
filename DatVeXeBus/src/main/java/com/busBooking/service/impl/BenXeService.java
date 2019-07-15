package com.busBooking.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import com.busBooking.dao.IBenXeDAO;
import com.busBooking.dao.ITuyenXeDAO;
import com.busBooking.model.BenXe;
import com.busBooking.model.TuyenXe;
import com.busBooking.service.IBenXeService;

public class BenXeService implements IBenXeService{

	@Inject
	private IBenXeDAO benXe;
	@Inject
	private ITuyenXeDAO tuyenXe;
	@Override
	public List<BenXe> danhSach() {		
		return benXe.danhSach();
	}
	@Override
	public BenXe layMot(int id) {
		
		return benXe.layMot(id);
	}
	@Override
	public List<BenXe> danhSachLoc(int id) {
		List<TuyenXe> listTuyenXe = tuyenXe.danhSach(id);
		List<BenXe> listBenXeDen = new ArrayList<BenXe>();
		for(int i = 0; i < listTuyenXe.size(); i++) {
			BenXe bx = new BenXe();
			bx = benXe.layMot(listTuyenXe.get(i).getIdBenXeDen());
			if(bx != null) {
				listBenXeDen.add(bx);
			}
		}
		return listBenXeDen;
	}

}
