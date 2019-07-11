package com.busBooking.model;

public class TuyenXe {

	private int id;
	private int idBenXeDi;
	private int idBenXeDen;
	private float bangGia;
	
	public TuyenXe(int id, int idBenXeDi, int idBenXeDen, float bangGia) {
		super();
		this.id = id;
		this.idBenXeDi = idBenXeDi;
		this.idBenXeDen = idBenXeDen;
		this.bangGia = bangGia;
	}

	public TuyenXe() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdBenXeDi() {
		return idBenXeDi;
	}

	public void setIdBenXeDi(int idBenXeDi) {
		this.idBenXeDi = idBenXeDi;
	}

	public int getIdBenXeDen() {
		return idBenXeDen;
	}

	public void setIdBenXeDen(int idBenXeDen) {
		this.idBenXeDen = idBenXeDen;
	}

	public float getBangGia() {
		return bangGia;
	}

	public void setBangGia(float bangGia) {
		this.bangGia = bangGia;
	}
	
	
}
