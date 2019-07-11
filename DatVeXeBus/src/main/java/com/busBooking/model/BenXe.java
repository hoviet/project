package com.busBooking.model;

public class BenXe {

	private int id;
	private String tenBenXe;
	private String maTinh;
	
	
	public BenXe() {
		super();
	}
	public BenXe(int id, String tenBenXe, String maTinh) {
		super();
		this.id = id;
		this.tenBenXe = tenBenXe;
		this.maTinh = maTinh;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenBenXe() {
		return tenBenXe;
	}
	public void setTenBenXe(String tenBenXe) {
		this.tenBenXe = tenBenXe;
	}
	public String getMaTinh() {
		return maTinh;
	}
	public void setMaTinh(String maTinh) {
		this.maTinh = maTinh;
	}
	
}
