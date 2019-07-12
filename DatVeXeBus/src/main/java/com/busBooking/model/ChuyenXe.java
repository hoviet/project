package com.busBooking.model;

import java.sql.Time;

import com.mysql.cj.util.TimeUtil;

public class ChuyenXe {

	private int id;
	private int idTuyenXe;
	private Time gioDi;
	private int idTaiXe;
	private int idXe;

	public ChuyenXe() {
		super();
	}

	public ChuyenXe(int id, int idTuyenXe, Time gioDi, int idTaiXe, int idXe) {
		super();
		this.id = id;
		this.idTuyenXe = idTuyenXe;
		this.gioDi = gioDi;
		this.idTaiXe = idTaiXe;
		this.idXe = idXe;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdTuyenXe() {
		return idTuyenXe;
	}

	public void setIdTuyenXe(int idTuyenXe) {
		this.idTuyenXe = idTuyenXe;
	}

	public Time getGioDi() {
		return gioDi;
	}

	public void setGioDi(Time gioDi) {
		this.gioDi = gioDi;
	}

	public int getIdTaiXe() {
		return idTaiXe;
	}

	public void setIdTaiXe(int idTaiXe) {
		this.idTaiXe = idTaiXe;
	}

	public int getIdXe() {
		return idXe;
	}

	public void setIdXe(int idXe) {
		this.idXe = idXe;
	}

}
